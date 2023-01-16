use v6;

unit module Env::Dotenv;

sub dotenv_load is export  { say ".env loaded." }

class Dotenv is export {

    method load {
        dotenv_load();
    }
}