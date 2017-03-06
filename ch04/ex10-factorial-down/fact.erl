-module(fact).
-export([factorial/1]). 


factorial(N) when N > 1->
  N * factorial(N-1);
  
factorial(N) when N =< 1 ->
  1.