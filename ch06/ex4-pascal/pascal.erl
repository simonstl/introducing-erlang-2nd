-module(pascal).
-export([triangle/1, add_row/1]). 

triangle(Rows) -> triangle([[0,1,0]],1,Rows).

triangle(List, Count, Rows) when Count >= Rows -> lists:reverse(List);

triangle(List, Count, Rows) -> 
  [Previous | _] = List,
  triangle([add_row(Previous) | List], Count+1, Rows).

add_row(Initial) -> add_row(Initial, 0, []).

add_row([], 0, Final) -> [0 | Final];

add_row([H | T], Last, New) -> add_row(T, H, [Last + H | New]).