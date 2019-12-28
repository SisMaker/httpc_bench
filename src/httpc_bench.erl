-module(httpc_bench).
-include("httpc_bench.hrl").

-export([
    run/0
]).

-define(Client_List, [
    httpc_bench_erlArango,
    httpc_bench_hackney,
    httpc_bench_httpc,
    httpc_bench_ibrowse
]).

-define(CycleCount , 200000).
-define(PoolSize_List,    [8, 16, 32, 64, 128, 256]).
-define(Concurrency_List, [32, 64, 128, 512, 2048, 4096]).

run() ->
    error_logger:tty(false),
    io:format("Running benchmark...~n~n" ++ "Client    PoolSize  Concurency  Requests/s  Error %~n" ++ [$= || _ <- lists:seq(1, 51)] ++ "~n", []),
    run_client(?Client_List, ?PoolSize_List, ?Concurrency_List, ?CycleCount).

run_client([Client | T], PoolSize_List, Concurrency_List, CycleCount) ->
    run_pool_size(PoolSize_List, Client, Concurrency_List, CycleCount),
    run_client(T, PoolSize_List, Concurrency_List, CycleCount);
run_client([], _PoolSize_List, _Concurrency_List, _CycleCount) ->
    ok.

run_pool_size([PoolSize | T], Client, Concurrency_List, CycleCount) ->
    run_concurrency(Concurrency_List, Client, PoolSize, CycleCount),
    run_pool_size(T, Client, Concurrency_List, CycleCount);
run_pool_size([], Client, _Concurrency_List, _CycleCount) ->
    {_Prefix, ClientTail} = lists:split(12, atom_to_list(Client)),
    io:format("~p test over-----------------------------~n", [ClientTail]),
    ok.

run_concurrency([Concurrency | T], Client, PoolSize, CycleCount) ->
    Client:start(PoolSize),
    {_Prefix, Client2} = lists:split(12, atom_to_list(Client)),
    Name = name(Client2, PoolSize, Concurrency),
    Fun = fun() -> Client:get() end,
    TimingOpts = [{name, Name}, {concurrency, Concurrency}, {iterations, CycleCount}, {output, "output/" ++ atom_to_list(Name)}],
    Results = timing_hdr:run(Fun, TimingOpts),
    Qps = lookup(success, Results) / (lookup(total_time, Results) / 1000000),
    Errors = lookup(errors, Results) / lookup(iterations, Results) * 100,
    io:format("~-10s ~7B ~11B ~11B ~8.1f~n", [Client2, PoolSize, Concurrency, trunc(Qps), Errors]),
    Client:stop(),
    run_concurrency( T, Client, PoolSize, CycleCount);
run_concurrency([], _Client, _PoolSize, _CycleCount) ->
    ok.

lookup(Key, List) ->
    case lists:keyfind(Key, 1, List) of
        false -> undefined;
        {_, Value} -> Value
    end.

name(Client, PoolSize, Concurrency) ->
    list_to_atom(Client ++ "_" ++ integer_to_list(PoolSize) ++ "_" ++ integer_to_list(Concurrency)).
