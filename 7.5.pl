delete(_, [], []). % If the list is empty, the result is empty.
delete(X, [X|L1], L2) :- % If the head of the list is the element to delete,
    delete(X, L1, L2).   % proceed with deleting from the rest of the list.
delete(X, [Y|L1], [Y|L2]) :- % If the head of the list is not the element to delete,
    X \= Y,                 % make sure the head is different from the element,
    delete(X, L1, L2).       % and keep the head in the result list.

main(Z) :- delete(a, [a,b,b,a,b], Z).
