-module(bounce).
-export([report/1]). 

report(Count) -> 
  NewCount = receive
     X -> io:format("Received #~p: ~p~n",[Count,X]),
     Count + 1
  end,
  report (NewCount).