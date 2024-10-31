winnings(abaris, 582).
winnings(careful, 17).
winnings(jingling_silver, 300).
winnings(maloja, 356).

lookup(H, w(H,G,_,_), G1) :- !, G=G1.
lookup(H, w(H1,_,Before,_), G) :-
	H @< H1,
	lookup(H, Before, G).
lookup(H, w(H1,_,_,After), G) :-
	H @> H1,
	lookup(H, After, G).

% lookup(abaris, S, 582), lookup(careful, S, 17), lookup(jingling_silver, S, 300), lookup(maloja, S, 356).

winnings_list(Winnings) :- findall(winnings(Horse,Guineas), winnings(Horse,Guineas), Winnings).
winnings_tree(Tree, in_order) :-
	winnings_list(Winnings),
	list_to_tree(Winnings, Tree).
winnings_tree(Tree, reversed) :-
	winnings_list(Winnings),
	reverse(Winnings, Rev_Winnings),
	list_to_tree(Rev_Winnings, Tree).
list_to_tree([], _).
list_to_tree([winnings(Horse, Guineas)|Tail], Tree) :- 
	lookup(Horse, Tree, Guineas),
	list_to_tree(Tail, Tree).

% Difference in placement of branches in Before or After slot
