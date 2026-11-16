:- module(cases, [title/1, case/3]).
:- use_module('../prolog/counterfind').
:- use_module(engine).
title('counterfind').
name_g(N) :- findall(X, rewrite(X, _, _), Ns), rnd_pick(Ns, N).
list_g(L) :- rnd_int(0, 5, K), length(L, K), maplist([X]>>rnd_int(0, 4, X), L).
case(counterexample, [N, M], counterexample) :- name_g(N), rnd_int(0, 4, M).
case(differs, [N, L], differs_bool) :- name_g(N), list_g(L).
case(plunit_test, [N, L], plunit_test) :- name_g(N), list_g(L).
differs_bool(N, L, B) :- ( differs(N, L) -> B = true ; B = false ).
