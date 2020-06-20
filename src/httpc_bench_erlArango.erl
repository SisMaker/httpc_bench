% https://github.com/benoitc/hackney

-module(httpc_bench_erlArango).
-include("httpc_bench.hrl").

-export([
    get/0,
    start/1,
    stop/0
]).

%% public
get() ->
    agHttpCli:callAgency(tt, <<"GET ">>, <<"/">>, [], undefined),
    ok.

start(PoolSize) ->
    application:ensure_all_started(erlArango),
    agHttpCli:startPool(tt, [{poolSize, PoolSize}, {dbName, <<>>}, {baseUrl, ?URL}], []).

stop() ->
    ok = application:stop(erlArango).
