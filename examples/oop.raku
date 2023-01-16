#!/usr/bin/env raku

use v6;

use lib "lib";

use Env::Dotenv;

dotenv_load();

my $dotenv = Dotenv.new();
$dotenv.load();
