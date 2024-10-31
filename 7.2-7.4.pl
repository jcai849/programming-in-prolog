#!/usr/bin/env swipl

:- initialization(main, main).

d(a, b). d(b, a).
d(b, e). d(e, b).
d(b, c). d(c, b).
d(d, e). d(e, d).
d(c, d). d(d, c).
d(e, f). d(f, e).
d(g, e). d(e, g).

hasphone(g).

go(X, X, _).
go(X, Y, T) :-
	d(X, Z),
	\+member(Z, T),
	write("Entering room "),write(Z),put('\n'),
	go(Z, Y, [Z|T]).

main :- go(a, X, [a]), hasphone(X), !, write("Has telephone in room "), write(X),put('\n').

% The order by which rooms are searched is equivalent to the order of the facts.
