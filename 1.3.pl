is_mother(X) :- mother(X,_).
is_father(X) :- father(X,_).
is_son(X) :- parent(_,X), male(X).
sister_of(X,Y) :- sibling(X,Y), female(X).
grandpa_of(X,Y) :- father(X,Z), parent(Z,Y).
sibling(X,Y) :- parent(Z,X), parent(Z,Y), diff(X,Y).
