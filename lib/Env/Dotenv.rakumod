use v6;

unit module Env::Dotenv;

sub dotenv is export(:functional)  { 

    if '.env'.IO.e {
        for '.env'.IO.lines -> $line {

            my ($key, $value) =  $line.split('=');
            %*ENV{$key} = $value;
        }
    }
}

class Dotenv is export(:class) {

    method load {
        dotenv();
    }
}