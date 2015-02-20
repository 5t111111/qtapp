# qtapp [![Build Status](https://travis-ci.org/5t111111/qtapp.svg)](https://travis-ci.org/5t111111/qtapp) [![Code Climate](https://codeclimate.com/github/5t111111/qtapp/badges/gpa.svg)](https://codeclimate.com/github/5t111111/qtapp)

qtapp adds `Object#qtapp` for outputting debug logs with ease, forked from [tapp](https://github.com/esminc/tapp).
The difference between the original `tapp` and `qtapp` is only one thing, `qtapp` decorates logs with CRAZY HANKAKU KANAs.

## Install

```
$ gem install qtapp
```

## Usage

``` ruby
require 'qtapp'

'foo'.qtapp
'foo'.qtaputs
```

## Configuration

``` ruby
Qtapp.configure do |config|
  config.default_printer = :awesome_print
  config.report_caller   = true
end
```

## Note on Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright &copy; 2015 Hirofumi Wakasugi. See LICENSE for details.

### tapp

Copyright &copy; 2010-2012 Keita Urashima.
