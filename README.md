# Tpb

This is a gem strongly inspired in [this](https://github.com/mhsjlw/thepiratebay) and [this](https://github.com/emnl/thepiratebay) gems.

I just wanted to do things differently, but I admit I copied large part of the code at the current version of this gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tpb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tpb

## Usage

```ruby
Tpb::Search.new ('the big bang theory', pages: 2, sort_by: :seeders, category: :none)
```

The only required param is the search term, the rest is optional and defaulted to the example values.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elfenars/tpb.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

