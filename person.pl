
person("Ivan","Petrov",man,50).
person("Andrey","Ivanov",man,70).
person("Sergey","Sidorov",man,30).


ave_age(X, Z) :- findall(Y, person(_, _, X, Y), L),
					 sum_age(L, S, K),
					 Z is S/K.
					 
sum_age([], 0, 0).
sum_age([X | T], S, K) :- sum_age(T, S1, K1),
							   K = K1+1,
							   S = S1+X.

