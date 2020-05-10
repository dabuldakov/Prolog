fly(111, "Tomsk","Novosibirsk",time(09:05:2020:10:23),time(09:05:2020:11:23)).
fly(112, "Tomsk","Kemerovo",time(09:05:2020:10:23),time(09:05:2020:11:23)).
fly(100, "Tomsk","Omsk",time(09:05:2020:10:23),time(09:05:2020:11:30)).
fly(113, "Tomsk","Moscow",time(09:05:2020:10:23),time(09:05:2020:14:23)).
fly(115, "Tomsk","Moscow",time(09:05:2020:23:45),time(10:05:2020:04:05)).
fly(114, "Tomsk","Moscow",time(09:05:2020:11:23),time(09:05:2020:15:30)).


main_f(A, B, Y1) :- 
	my_fly(A, B, L),
	time_my_fly(L, Y),
	quick_sort(Y, Y1).
	
my_fly(A, B, L) :- findall((X,Y,Z), fly(X, A,B, Y,Z), L).


time_my_fly([],[]).
time_my_fly([(N,A,B)|XS],[(N,Y)|YS]) :- 
	abs_time(A, K),
	abs_time(B, S),
	Y is S - K,
	time_my_fly(XS,YS).


abs_time(time(D:M:Y:HH:MM), R) :- R is (Y*365*24*60) + (M*31*24*60) + (D*24*60) + (HH*60) + MM.


quick_sort([H | L], S):- split(H, L, L1, L2), 	
				quick_sort(L1, S1),
				quick_sort(L2, S2),
				append(S1, [H | S2], S).
quick_sort([], []).

split((H,H1), [(A,A1) | LS], [(A,A1) | L1], L2):- A1<H1, split((H,H1), LS, L1, L2),!.
split((H,H1), [(A,A1) | LS], L1, [(A,A1) | L2]):- A1>=H1, split((H,H1), LS, L1, L2),!.
split(_, [], [], []).