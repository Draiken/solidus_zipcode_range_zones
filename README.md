SolidusZipcodeRangeZones
===============

Extract the Spree::Zone by zipcode ranges.

Installation
------------

Add solidus_zipcode_range_zones to your Gemfile:

```ruby
gem 'solidus_zipcode_range_zones', github: 'Draiken/solidus_zipcode_range_zones'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_zipcode_range_zones:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs, and [Rubocop](https://github.com/bbatsov/rubocop) static code analysis. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_zipcode_range_zones/factories'
```

## License

SolidusZipcodeRangeZones is inspired by [SolidusZipZones]. It is free software, and may be redistributed under the terms specified in the [license].

[license]: MIT-LICENSE
[SolidusZipZones]: https://github.com/nebulab/solidus_zip_zones
