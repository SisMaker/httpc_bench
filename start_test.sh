erl -pa _build/default/lib/*/ebin -noshell -eval 'httpc_bench_start:start_test(), httpc_bench_start:stop().'