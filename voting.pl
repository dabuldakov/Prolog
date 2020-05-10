person(krishna).
person(rama).
person(joel).

ageGreater18(joel).

can_vote(P1) :- person(P1), ageGreater18(P1).