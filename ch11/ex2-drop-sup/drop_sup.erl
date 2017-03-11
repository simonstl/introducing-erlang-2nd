-module(drop_sup).
-behaviour(supervisor).
-export([start_link/0]). % convenience call for startup
-export([init/1]). % supervisor calls
-define(SERVER, ?MODULE). 


%%% convenience method for startup
start_link() ->
        supervisor:start_link({local, ?SERVER}, ?MODULE, []).

%%% supervisor callback
init([]) ->
    SupFlags = #{strategy => one_for_one,
                 intensity => 1,
                 period => 5},

    Drop = #{id => 'drop',
               start => {'drop', start_link, []},
               restart => permanent,
               shutdown => 5000,
               type => worker,
               modules => ['drop']},             

     {ok, {SupFlags, [Drop]}}.

%%% Internal functions (none here)