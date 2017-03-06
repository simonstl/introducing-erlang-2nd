-module(ask).
-export([line/0]).

line() -> 
  Planemo = get_planemo(),
  Distance = get_distance(),
  drop:fall_velocity({Planemo, Distance}).

  
get_planemo() ->
  io:format("Where are you?~n"),
  io:format(" 1. Earth ~n"),
  io:format(" 2. Earth's Moon~n"),
  io:format(" 3. Mars~n"),
  Answer = io:get_line("Which? > "),

  Character = hd(Answer),
  char_to_planemo(Character).  
  
  
char_to_planemo(Char) ->
  if
    [Char] == "1" -> earth;
    Char == $2 -> moon;
    Char == 51 -> mars
  end.
 
%Alt approach to char_to_planemo 
%char_to_planemo($1) -> earth;
%char_to_planemo($2) -> moon;
%char_to_planemo($3) -> mars. 
 
get_distance() ->
  Input = io:get_line("How far? (meters) > "),
  % Value = string:strip(Input, right, $\n),
  {Distance, _} = string:to_integer(Input),
  Distance.
  