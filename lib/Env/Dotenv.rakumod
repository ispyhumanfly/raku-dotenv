use v6;

unit module Env::Dotenv;

sub greeting ($name = 'Camelia') { "Greetings, $name!" }
our sub loud-greeting (--> Str)  { greeting().uc       }
sub friendly-greeting is export  { greeting('friend')  }

class Dotenv is export {

    method load {
        say "hi";
    }
}