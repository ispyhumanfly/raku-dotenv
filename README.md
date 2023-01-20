# Dotenv

[![License: Artistic-2.0](https://img.shields.io/badge/License-Artistic%202.0-0298c3.svg)](https://opensource.org/licenses/Artistic-2.0)
![Zef Badge](https://raku.land/zef:ispyhumanfly/Env::Dotenv/badges/version)
[![SparrowCI](https://ci.sparrowhub.io/project/gh-ispyhumanfly-raku-dotenv/badge)](https://ci.sparrowhub.io)

A shim to load environment variables from .env into ENV in development. Based on the original [bkeepers](https://github.com/bkeepers/dotenv) module written in Ruby.
And from this one https://pypi.org/project/python-dotenv/

## Synopsis

```raku
use v6;
use Env::Dotenv :ALL;

dotenv_load();

for %*ENV.kv -> $key, $value {
    "$key: $value".say;
}

my %dotenv = dotenv_values();

say %dotenv{"MY_SECRET_INFO"};

for dotenv_values().kv -> $key, $value {
    "$key: $value".say;
}


```

## Installation

```shell
zef install -v https://github.com/ispyhumanfly/raku-dotenv.git
```
