# I18n::Flat

Use a flat syntax for your translation files loaded with `i18n`.

Instead of nesting the translation keys:

```yml
en:
  an:
    example:
      text: An example text
fr:
  an:
    example:
      text: Un texte d'exemple
```

The keys are kept flat, and the locale is placed inside the key:

```yml
an.example.text:
  en: An example text
  fr: Un texte d'exemple
```

This syntax:

- Makes it easy to grep for translation keys
- Groups together changes instead of splitting them into several files
- Makes it easy to see missing translations or errors in variable names accross
  all translations

## Installation

Add these lines to your application's Gemfile:

```ruby
# Use a flat syntax for translation files.
gem 'i18n-flat'
```

And then execute:

    $ bundle install

## Usage

In an initializer, wrap your I18n backend:

```rb
I18n.backend = I18n::Backend::Flat.new(I18n.backend)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then,
run `rake spec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then
run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/ParisRubyWorkshop/i18n-flat. This project is intended to be
a safe, welcoming space for collaboration, and everyone interacting in the
project's codebases, issue trackers, chat rooms and mailing lists is
is expected to follow the
[code of conduct](https://github.com/ParisRubyWorkshop/i18n-flat/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
