use v6;

unit module Env::Dotenv;

sub dotenv_load is export  { 

    if '.env'.IO.e {
        for '.env'.IO.lines -> $line {

            my ($key, $value) =  $line.split('=');
            %*ENV{$key} = $value;
        }
    }
}

class Dotenv is export {

    method load {
        dotenv_load();
    }
}