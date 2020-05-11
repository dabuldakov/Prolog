append([],List2,List2).
append([Head|Tail],List2,[Head|TailResult]):-
append(Tail,List2,TailResult).

split(H,[A|LS],[A|L1],L2):- A<H, split(H,LS,L1,L2),!.
split(H,[A|LS],L1,[A|L2]):- A>=H, split(H,LS,L1,L2),!.
split(_,[],[],[]).

quick_sort([H|L],S):- split(H,L,L1,L2),
quick_sort(L1,S1),
quick_sort(L2,S2),
append(S1,[H|S2],S).
quick_sort([],[]).

reverse([X],[X]) :-!.
reverse([X|T],Z):- reverse(T,W), append(W,[X],Z).

f(L,Res):- quick_sort(L,S), 
	reverse(S,R), 
	[X,Y,Z|_]=R, 
	Res=[X,Y,Z].