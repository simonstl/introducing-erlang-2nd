-module(mathdemo).
-export([absolute_value/1]). 


absolute_value(Number) when Number < 0  -> -Number;
absolute_value(Number) when Number == 0  -> 0;
absolute_value(Number) when Number > 0  -> Number.