-module(planemoStorage).
-export([setup/0]).
-include("records.hrl").

setup() ->
 PlanemoTable=ets:new(planemos, [named_table, {keypos, #planemo.name}]),
 ets:info(PlanemoTable).