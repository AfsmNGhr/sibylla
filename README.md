## SIBYLLA

Ruby voice assistant use [Festival](https://wiki.archlinux.org/index.php/Festival_%28%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9%29) and Pocketsphinx ...

## Requirements

- *nix* or OS X (pgrep tools) ...
- [Festival](https://wiki.archlinux.org/index.php/Festival_%28%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9%29) and necessary languages ...
- [Pulseaudio](https://wiki.archlinux.org/index.php/PulseAudio_%28%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9%29)
- Sphinxbase
- Pocketsphinx

## Install

```.ruby
# Gemfile
gem 'sibylla'
```
or
```.ruby
$ gem install sibylla
```

## Used
### Call methods
```.ruby
require 'sibylla'

Sibylla::Speech.new('Пример') # => Say 'Пример'
Sibylla::Speech.new(['Пример', 'два']) # => Say 'Пример - два'

## Configuration

Sibylla.configuration # show all params ... ~/.sibylla/.configuration.yml
Sibylla::Configuration.new(config = {}) # load default and merge params

```
## To be continued ...
