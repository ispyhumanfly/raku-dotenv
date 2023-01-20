# Dotenv

[![License: Artistic-2.0](https://img.shields.io/badge/License-Artistic%202.0-0298c3.svg)](https://opensource.org/licenses/Artistic-2.0)
![Zef Badge](https://raku.land/zef:ispyhumanfly/Env::Dotenv/badges/version)
[![SparrowCI](https://ci.sparrowhub.io/project/gh-ispyhumanfly-raku-dotenv/badge)](https://ci.sparrowhub.io)

A shim to load environment variables from .env into ENV in development. Based on the original [bkeepers](https://github.com/bkeepers/dotenv) module written in Ruby.
And from this one https://pypi.org/project/python-dotenv/

## Synopsis

In your application or scripts root directory, create a `.env` file and place some variables in it.
```shell
MY_SECRET_INFO="some value"
MY_API_KEY=123123oiashdam,hwejk1h23kbaamn
```

Then inside of your script...

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
A command line interface is also in the works. Right now it only outputs the variables it finds inside of your .env. More features to come.
```shell
$ dotenv
```

## Installation

### Stable

```shell
zef install Env::Dotenv
```
### Development
```shell
zef install -v https://github.com/ispyhumanfly/raku-dotenv.git
```
