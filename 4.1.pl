sum_to(1, 1). % :- !.
sum_to(N, Res) :-
	N1 is N - 1,
	sum_to(N1, Res1),
	Res is Res1 + N.

foo(bananas).
go :- sum_to(1, X), foo(apples).

/*
When cut is excluded, the first answer is the correct one.
When further answers are sought through backtracking,
negative integers are searched through without boundary,
and the stack is quickly exceeded.
*/
