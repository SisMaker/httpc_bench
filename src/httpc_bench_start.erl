-module(httpc_bench_start).

-export([start_server/0, start_test/0, stop/0]).

start_server() ->
   httpc_bench_server:start().

start_test() ->
   httpc_bench:run().

stop() ->
   init:stop().
