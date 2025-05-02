% hw10.pl
% Suman Sharma, Asta Shakti - 5/2/25
% Problem 5 - Prolog Horn Clauses

% a. If Fred is the father of Mike, then Fred is an ancestor of Mike.
ancestor(X, Y) :- father(X, Y).

% b. If Mike is the father of Joe and Mike is the father of Mary, then Mary is the sister of Joe.
sister(X, Y) :- father(Z, X), father(Z, Y), female(X), X \= Y.

% c. If Mike is the brother of Fred and Fred is the father of Mary, then Mike is the uncle of Mary.
uncle(X, Y) :- brother(X, Z), father(Z, Y).

% Programming Exercise 1
mother(X, Y) :- parent(X, Y), female(X).
father(X, Y) :- parent(X, Y), male(X).

% Programming Exercise 2
% sister(X, Y) :- father(Z, X), father(Z, Y), female(X), X \= Y.
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), X \= Y.

% Facts for testing
parent(fred, mike).
parent(mike, joe).
parent(mike, mary).
parent(fred, sam).
parent(fred, sara).
parent(sam, lily).

male(fred).
male(mike).
male(joe).
male(sam).

female(mary).
female(sara).
female(lily).

:- initialization(main).

main :-
    nl,
    write('File loaded successfully. Ready for queries.'), nl, nl,

    write('Running sample queries:'), nl, nl,

    write('1. ancestor(fred, mike): '), 
    (ancestor(fred, mike) -> write('true') ; write('false')), nl,

    write('2. sister(mary, joe): '),
    (sister(mary, joe) -> write('true') ; write('false')), nl,

    write('3. sister(sara, sam): '),
    (sister(sara, sam) -> write('true') ; write('false')), nl,

    write('4. mother(sara, lily): '),
    (mother(sara, lily) -> write('true') ; write('false')), nl,

    write('5. uncle(mike, mary): '),
    (uncle(mike, mary) -> write('true') ; write('false')), nl.
