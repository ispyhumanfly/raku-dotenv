#!raku

use v6;

use lib "lib";

use Env::Dotenv;

dotenv_load();

say %*ENV<MY_SECRET_INFO>;

