#!/usr/bin/env raku

use v6;


use lib "lib";
use Env::Dotenv;

say friendly-greeting;

my $dotenv = Dotenv.new();

$dotenv.load();
