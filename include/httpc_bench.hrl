-define(BUOY_URL, {buoy_url, ?HOST, ?HOSTNAME, ?PATH, ?PORT, http}).
-define(HEADERS, [{<<"Connection">>, <<"Keep-Alive">>}]).
-define(HOST, <<"127.0.0.1:8080">>).
-define(HOSTNAME, <<"127.0.0.1">>).
-define(PIPELINING, 1024).
-define(PATH, <<"/">>).
-define(PORT, 8080).
-define(TIMEOUT, 1000).
-define(URL, <<"http://127.0.0.1:8080/">>).
