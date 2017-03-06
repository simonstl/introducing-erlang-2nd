-module(fact).
-export([factorial/1]). 


factorial(N) when N > 1->
  io:format("Calling from ~w.~n", [N]),
  Result = N * factorial(N-1),
  io:format("~w yields ~w.~n", [N, Result]),
  Result;
  
factorial(N) when N =< 1 ->
  io:format("Calling from 1.~n"),
  io:format("1 yields 1.~n"),
  1.