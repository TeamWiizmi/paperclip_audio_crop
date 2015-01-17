# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paperclip_audio_crop/version'

Gem::Specification.new do |spec|
  spec.name          = "paperclip_audio_crop"
  spec.version       = PaperclipAudioCrop::VERSION
  spec.authors       = ["Jent Zheng"]
  spec.email         = ["jent.zheng@gmail.com"]
  spec.summary       = "Paperclip post-processor that generates audio crop by using ffmpeg"
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = "https://github.com/jentzheng/paperclip_audio_crop"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "paperclip"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
