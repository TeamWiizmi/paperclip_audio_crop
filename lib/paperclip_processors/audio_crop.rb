module Paperclip
  class AudioCrop < Processor
    attr_accessor :offset, :duration

    def initialize file, options = {}, attachment = nil
      super
      @offset = options[:offset]
      @duration = options[:duration]
      @current_format = File.extname(@file.path)
      @basename = File.basename(file.path)
    end

    def make
      src = @file
      dst = Tempfile.new([@basename, @current_format])
      dst.binmode
      begin
        success = Paperclip.run("ffmpeg -i #{src.path} -acodec copy -t #{@duration} -ss #{@offset} #{dst.path}")
      rescue PaperclipCommandLineError => e
        raise Paperclip::Error, "error while processing audio for #{@file}: #{e}"
      end
      dst
    end
  end
end
