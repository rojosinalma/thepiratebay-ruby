# The Pirate Bay Ruby

[![Maintainability](https://api.codeclimate.com/v1/badges/c153ad6cde7212dc4a24/maintainability)](https://codeclimate.com/github/elfenars/thepiratebay-ruby/maintainability)
[![Dependency Status](https://gemnasium.com/badges/github.com/elfenars/thepiratebay-ruby.svg)](https://gemnasium.com/github.com/elfenars/thepiratebay-ruby)
[![Gem Version](https://badge.fury.io/rb/thepiratebay-ruby.svg)](https://badge.fury.io/rb/thepiratebay-ruby)


This is a gem strongly inspired in [this](https://github.com/mhsjlw/thepiratebay) and [this](https://github.com/emnl/thepiratebay) gems.

I just wanted to do things differently, but I admit I copied large part of the code at the current version of this gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'thepiratebay-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thepiratebay-ruby

## Usage

```ruby
require 'tpb'

Tpb::Search.new('the big bang theory', pages: 2, sort_by: :seeders, category: :none)
```

The only required param is the search term, the rest is optional and defaulted to the example values.

An example response looks like this:

```ruby
[#<Tpb::Torrent:0x007f9f8aa1bce8 @title="The.Big.Bang.Theory.S09E04.HDTV.x264-LOL[ettv]", @seeders=91, @leechers=16, @magnet_link="magnet:?xt=urn:btih:a455ab3d5814ca566e3d7fbbac65bb72ffc4de43&dn=The.Big.Bang.Theory.S09E04.HDTV.x264-LOL%5Bettv%5D&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969", @category="Video", @torrent_id="12560421", @url="/torrent/12560421/The.Big.Bang.Theory.S09E04.HDTV.x264-LOL[ettv]">, (...)]
```

The result is an array of `Torrent`. Check the Torrent class definition for available attributes.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elfenars/tpb.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

