-module(ask).
-export([term/0]).

term() -> 
  Input = io:read("What {planemo, distance} ? >>"),
  process_term(Input).
  
process_term({ok, Term}) when is_tuple(Term) -> drop:fall_velocity(Term);

process_term({ok, _}) -> io:format("You must enter a tuple.~n");

process_term({error, _}) -> io:format("You must enter a tuple with correct syntax.~n").