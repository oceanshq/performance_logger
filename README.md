# PerformanceLogger

This gem allows you to track memory usage and time passage during the life of
the PerformanceLogger object, as well as deltas between each check. The output
is `puts`'d to the console, and it also writes to a long-running CSV and per-object
log file in `logs/performance_logger`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'performance_logger'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install performance_logger

## Usage

`pl = PerformanceLogger.new`

Each subsequent log:

`pl.log_performance("my memo, i.e. 'assigns values to MyObject attributes'")`

### Options

To disable any of the outputs:

`PerformanceLogger.new({puts: false, log: false, csv: false})`

To have the logger 'pause' a number of seconds during the `puts` logging so that
you can actually see the log as it goes by. This does not affect the 'time' measurement:

`PerformanceLogger.new({pause: 8})`


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/performance_logger. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PerformanceLogger project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/performance_logger/blob/master/CODE_OF_CONDUCT.md).
