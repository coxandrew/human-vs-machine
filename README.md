## Quickstart

Install gems:
```
bundle
```

Start a new kata (e.g. a "bowling" kata) with a starter spec file:
```zsh
ruby kata bowling
```

This will create the following directories and files:
```
bowling
|--lib
|   +--bowling.rb
+--spec
    +--bowling_spec.rb
```

To run specs, go into your project's folder and run:
```
bundle exec rspec spec
```
