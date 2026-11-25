# counterfind

when an MNN rewrite fails its proof, find the smallest input that breaks it and turn it into a test, so a failed proof makes the test suite stronger. Inputs are searched smallest first (by length, then by values), so the first one found is a smallest one. A rewrite is Name-(Original, Rewritten): two predicates called as call(P, Input, Output).

## Use

```prolog
?- use_module(prolog/counterfind).
?- counterexample(rev_rev, 3, CE).            % CE = none: reverse(reverse(X)) = X holds
?- counterexample(sort_for_msort, 3, CE).     % CE = input([0,0]): sort drops duplicates, msort doesn't
?- plunit_test(sort_for_msort, [0,0], T).     % a PlUnit test that pins the difference down, runnable as written
```

## Proofs

`proofs/theorems.pl` proves 6 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every rewrite, every list up to length 3 over 0..2.

1. A counterexample really distinguishes the two programs.
2. It is a smallest one: no shorter input distinguishes them.
3. none means the rewrite agrees on every input in the bound.
4. The correct rewrites are found correct, and the wrong ones wrong.
5. Searching further never undoes a counterexample: if one is found within M, the same one is found within M+1.
6. The written PlUnit test runs as written: it calls the original predicate itself, passes with it, and fails with the rewrite in its place.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
