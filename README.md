# raku-dotenv

[![License: Artistic-2.0](https://img.shields.io/badge/License-Artistic%202.0-0298c3.svg)](https://opensource.org/licenses/Artistic-2.0)

A Raku shim to load environment variables from .env into ENV in development. Based on the original [bkeepers](https://github.com/bkeepers/dotenv) module written in Ruby.

## Synopsis

```raku
use v6;
use Env::Dotenv;

# This way
dotenv_load();

# Or this way
my $dotenv = Dotenv.new();
$dotenv.load();

```
