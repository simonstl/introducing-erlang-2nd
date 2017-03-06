-module(ask).
-export([chars/0]).

chars() -> 
  io:format("Which planet are you on?~n"),
  io:format(" 1. Earth ~n"),
  io:format(" 2. Earth's Moon~n"),
  io:format(" 3. Mars~n"),
  io:get_chars("Which? > ",1),
  io:get_line(""), 
  io:get_line("How far? >").