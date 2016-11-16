#!/usr/bin/env swipl

:- initialization main.

argc(Argc) :-
  getenv('COG_ARGC', ArgcAtom),
  atom_number(ArgcAtom, Argc).

range(N, Range) :- 
  N1 is N - 1,
  findall(M, between(0, N1, M), Range).

argAtom(N, ArgAtom) :-
  format(atom(ArgAtom), 'COG_ARGV_~d', [N]).

argAtoms(Range, ArgAtoms) :-
  maplist(argAtom, Range, ArgAtoms).

args(ArgAtoms, Args) :-
  maplist(getenv, ArgAtoms, Args).

main :-
  argc(Argc),
  range(Argc, Range),
  argAtoms(Range, ArgAtoms),
  args(ArgAtoms, Args),
  atomic_list_concat(Args, ' ', ArgsString),
  write(ArgsString),
  nl,
  halt.
