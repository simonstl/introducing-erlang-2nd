-module(bounce).
-export([report/0]). 

report() -> 
  receive
     X -> io:format("Divided to ~p~n",[X/2]),
     report()
  end.
