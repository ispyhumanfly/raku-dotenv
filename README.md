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

# Attempt to access a variable that had been set in your local .env file
if %*ENV<MY_SECRET_INFO> {
    say %*ENV<MY_SECRET_INFO>;
}

## Or...

my $config = dotenv_values(".env")

say $config;


```

## Installation

```shell
zef install -v https://github.com/ispyhumanfly/raku-dotenv.git
```
