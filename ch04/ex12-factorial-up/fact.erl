-module(fact).
-export([factorial/1]). 


factorial(N) ->
  factorial(1, N, 1).
  
factorial(Current, N, Result) when Current =< N ->
    NewResult = Result*Current,
    io:format("~w yields ~w!~n", [Current, NewResult]),
    factorial(Current+1, N, NewResult);
    
factorial(Current, N, Result) ->
    io:format("Finished.~n"),
    Result.