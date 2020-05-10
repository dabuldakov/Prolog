male(krishna).
male(rama).
male(hari).

female(chamu).
female(sowmya).
female(sailaja).

parents(krishna, devi, lakshman).
parents(rama, devi, lakshman).
parents(hari, sudha, jangayya).
parents(chamu, lakshmi, narayana).
parents(sowmya, harini, ramakrishna).
parents(sailaja, nhargavi, narayana).

brothers(Person1, Person2) :- male(Person1), male(Person2), parents(Person1, Mother, Father), parents(Person2, Mother, Father).
sisters(Person1, Person2) :- female(Person1), female(Person2), parents(Person1, Mother, Father), parents(Person2, Mother, Father).
