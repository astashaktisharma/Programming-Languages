% hw11_asta.pl
% Solutions to Programming Exercises 3, 5, and 6 from page 761

max_of_list([X], X).
max_of_list([H|T], Max) :-
    max_of_list(T, TempMax),
    Max is max(H, TempMax).

% Exercise 5: Union of two lists

union([], L, L).
union([H|T], L, R) :-
    member(H, L),
    union(T, L, R).
union([H|T], L, [H|R]) :-
    \+ member(H, L),
    union(T, L, R).

% Exercise 6: Return the final element of a list

last_element([X], X).
last_element([_|T], X) :- last_element(T, X).

% Sample test output using initialization(main)
:- initialization(main).

main :-
    nl, write('Running HW11 Sample Queries:'), nl, nl,

    write('1. max_of_list([5, 2, 9, 1, 7], X): '),
    (max_of_list([5, 2, 9, 1, 7], X1) -> write(X1) ; write('Failed')), nl,

    write('2. union([1,2,3], [3,4,5], X): '),
    (union([1,2,3], [3,4,5], X2) -> write(X2) ; write('Failed')), nl,

    write('3. last_element([a, b, c, d], X): '),
    (last_element([a, b, c, d], X3) -> write(X3) ; write('Failed')), nl.
