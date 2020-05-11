%---- перебираем искомые элементы

change([H | T], [H1 | T1], List, ListQ) :-
	helper(H, H1, List, Q),
	change(T, T1, Q, ListQ).
	change([], [], S, S).
%-------change([], [], S, W):- append(S, [], W).

%---- заменяем все Х на У если найдем

helper(_, _, [], []).  
helper(X, Y, [H | T], [Y | T1]) :-
	X = H,
	helper(X, Y, T, T1),
	!.
helper(X, Y, [H | T1], [H | List]) :-
	helper(X, Y, T1, List).