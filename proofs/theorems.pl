% Theorems about counterfind, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module('../prolog/counterfind').
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).

% Domain: every rewrite, every list up to length 3 over 0..2.

% 1. A counterexample really distinguishes the two programs.
theorem(counterexample_distinguishes) :-
    forall(( rewrite(N, _, _), between(0, 3, M), counterexample(N, M, input(I)) ), differs(N, I)).

% 2. It is a smallest one: no shorter input distinguishes them.
theorem(counterexample_is_smallest) :-
    forall(( rewrite(N, _, _), counterexample(N, 3, input(I)), length(I, K), inputs(3, [0, 1, 2], J), length(J, L), L < K ), \+ differs(N, J)).

% 3. none means the rewrite agrees on every input in the bound.
theorem(none_means_agreement) :-
    forall(( rewrite(N, _, _), counterexample(N, 3, none), inputs(3, [0, 1, 2], I) ), \+ differs(N, I)).

% 4. The correct rewrites are found correct, and the wrong ones wrong.
theorem(known_rewrites_classified) :-
    forall(member(N, [rev_rev, sum_fold, len_append, last_rev]), counterexample(N, 3, none)),
    forall(member(N, [sort_for_msort, max_first, sub_comm]), counterexample(N, 3, input(_))).

% 5. Searching further never undoes a counterexample: if one is found within M, the same one is found within M+1.
theorem(bound_monotone) :-
    forall(( rewrite(N, _, _), between(0, 2, M), counterexample(N, M, input(I)), M1 is M + 1 ), counterexample(N, M1, input(I))).
