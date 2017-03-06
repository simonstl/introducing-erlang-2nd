-module(fact).
-export([factorial/1]). 


factorial(N) -> factorial(N,1).

factorial(N, Result) when N > 1 ->
factorial(N-1, N*Result);

factorial(N, Result) when N =< 1 ->
Result.