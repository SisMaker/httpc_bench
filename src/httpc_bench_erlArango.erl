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
    agHttpCli:callAgency(tt, {<<"GET">>, <<"/">>, [], []}, 5000),
    ok.

start(PoolSize) ->
    application:start(erlArango),
    agHttpCli:startPool(tt, [{poolSize, PoolSize}, {baseUrl, ?URL}], []).

stop() ->
    ok = application:stop(erlArango).
