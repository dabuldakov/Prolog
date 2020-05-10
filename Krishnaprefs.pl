male(krishna).
male(rama).
male(bhima).

female(chamu).
female(bhargavi).
female(sailaja).
female(priya).

trekking(chamu).
trekking(sailaja).

krishna_likes(X) :- female(X), trekking(X).
