#!/usr/bin/env escript

argv(0, Argv) ->
  [os:getenv("COG_ARGV_0")|Argv];
argv(N, Argv) ->
  Arg = os:getenv(io_lib:format("COG_ARGV_~p", [N])),
  argv(N - 1, [Arg|Argv]).

main(_) ->
  {Argc, []} = string:to_integer(os:getenv("COG_ARGC")),
  Argv = argv(Argc - 1, []),
  io:fwrite("~s~n", [string:join(Argv, " ")]).
