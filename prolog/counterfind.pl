% counterfind: when an MNN rewrite fails its proof, find the smallest input that breaks it and
% turn it into a test, so a failed proof makes the test suite stronger. Inputs are searched
% smallest first (by length, then by values), so the first one found is a smallest one.
% A rewrite is Name-(Original, Rewritten): two predicates called as call(P, Input, Output).
%?- counterexample(rev_rev, 3, CE).            % CE = none: reverse(reverse(X)) = X holds
%?- counterexample(sort_for_msort, 3, CE).     % CE = input([0,0]): sort drops duplicates, msort doesn't
%?- plunit_test(sort_for_msort, [0,0], T).     % a PlUnit test that pins the difference down
:- module(counterfind, [rewrite/3, inputs/3, counterexample/3, differs/2, plunit_test/3, size/2]).
:- use_module(library(lists)).
:- use_module(library(apply)).

% Rewrites proposed by an optimiser: some correct, some not.
rewrite(rev_rev, [L, O]>>(reverse(L, R), reverse(R, O)), [L, O]>>(O = L)).
rewrite(sort_for_msort, [L, O]>>msort(L, O), [L, O]>>sort(L, O)).
rewrite(sum_fold, [L, O]>>sum_list(L, O), [L, O]>>foldl([X, A0, A]>>(A is A0 + X), L, 0, O)).
rewrite(len_append, [L, O]>>(append(L, L, D), length(D, O)), [L, O]>>(length(L, N), O is N * 2)).
rewrite(max_first, [L, O]>>(L == [] -> O = none ; max_list(L, O)), [L, O]>>(L = [O|_] -> true ; O = none)).
rewrite(last_rev, [L, O]>>(last(L, X) -> O = X ; O = none), [L, O]>>(reverse(L, [X|_]) -> O = X ; O = none)).
rewrite(sub_comm, [L, O]>>foldl([X, A0, A]>>(A is X - A0), L, 0, O), [L, O]>>foldl([X, A0, A]>>(A is A0 - X), L, 0, O)).

% inputs(+MaxLength, +Values, -Input): every list up to MaxLength over Values, smallest first.
inputs(Max, Vs, L) :- between(0, Max, N), length(L, N), maplist([X]>>member(X, Vs), L).

differs(Name, In) :- rewrite(Name, P, Q), run(P, In, A), run(Q, In, B), A \== B.
run(P, In, O) :- ( catch(call(P, In, O0), E, O0 = error(E)) -> O = O0 ; O = fails ).

% counterexample(+Rewrite, +MaxLength, -Result): input(Smallest) or none (agrees on every input up to MaxLength over 0..2).
counterexample(Name, Max, R) :- ( inputs(Max, [0, 1, 2], In), differs(Name, In) -> R = input(In) ; R = none ).

size(L, N) :- length(L, N).

% plunit_test(+Rewrite, +Input, -Text): a PlUnit test that runs as written: its body calls the original
% predicate itself (not a helper that would have to be defined elsewhere) on the input, and checks the
% output the rewrite must match. Each line reads back as a Prolog term.
plunit_test(Name, In, Text) :- rewrite(Name, P, Q), run(P, In, A), run(Q, In, B),
    atom_concat(Name, '_counterexample', T), Clause = (test(T) :- call(P, In, Out), Out == A),
    copy_term(Clause, C), numbervars(C, 0, _),
    format(string(Text), ":- begin_tests(~w).~n% the rewrite gave ~q~n~q.~n:- end_tests(~w).~n", [Name, B, C, Name]).
