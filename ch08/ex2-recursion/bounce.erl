-module(bounce).
-export([report/0]). 

report() -> 
  receive
     X -> io:format("Received ~p~n",[X]),
     report()
  end.
