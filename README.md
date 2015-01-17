# PaperclipAudioCrop

Paperclip post-processor that generates audio crop by using ffmpeg

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paperclip_audio_crop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paperclip_audio_crop

## Usage

```ruby

class Audio < Asset
  has_attached_file :attachment,
    styles: {
      clip: { offset: 0, duration: 30, } # Cut the first 30 seconds
    },
    processors: [:audio_crop]
end

```
## Contributing

1. Fork it ( https://github.com/[my-github-username]/paperclip_audio_crop/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
