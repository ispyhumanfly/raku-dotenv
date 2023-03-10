use v6;

unit module Env::Dotenv;

sub dotenv_load is export(:load)  { 

    if '.env'.IO.e {
        for '.env'.IO.lines -> $line {

            my ($key, $value) =  $line.split('=');
            %*ENV{chomp($key)} = chomp($value);
        }
    }
}

sub dotenv_values is export(:values)  {
    
    my %env;

    if '.env'.IO.e {
        for '.env'.IO.lines -> $line {

            my ($key, $value) =  $line.split('=');
            %env{chomp($key)} = chomp($value);
        }
    }
    
    return %env;
}

class Dotenv is export(:oop) {

    method load {
        return dotenv_load();
    }
    
    method values {
        return dotenv_values();
    }
}