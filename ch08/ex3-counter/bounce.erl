-module(bounce).
-export([report/1]). 

report(Count) -> 
  receive
     X -> io:format("Received #~p: ~p~n",[Count,X]),
     report(Count+1)
  end.
