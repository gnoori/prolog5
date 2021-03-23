% Guzel Noori.
% CS362, 2/21/2021.

time(a, 1).
time(b, 2).
time(i, 5).
time(c, 10).
time([X,Y], T) :- time(X, TX), time(Y, TY), T is max(TX, TY).

change(l, r).
change(r, l).

move([X,X,I,C,X],[a,b],[Y,Y,I,C,Y]) :- change(X,Y).
move([X,B,X,C,X],[a,i],[Y,B,Y,C,Y]) :- change(X,Y).
move([X,B,I,X,X],[a,c],[Y,B,I,Y,Y]) :- change(X,Y).
move([A,X,X,C,X],[b,i],[A,Y,Y,C,Y]) :- change(X,Y).
move([A,X,I,X,X],[b,c],[A,Y,I,Y,Y]) :- change(X,Y).
move([A,B,X,X,X],[i,c],[A,B,Y,Y,Y]) :- change(X,Y).
move([X,B,I,C,X],a,[Y,B,I,C,Y]) :- change(X,Y).
move([A,X,I,C,X],b,[A,Y,I,C,Y]) :- change(X,Y).
move([A,B,X,C,X],i,[A,B,Y,C,Y]) :- change(X,Y).
move([A,B,I,X,X],c,[A,B,I,Y,Y]) :- change(X,Y).

solution([r,r,r,r,r], [], T) :- T =< 0.
solution(C, [Move|NextMove], T) :-
    move(C, Move, NextC),
    time(Move, TMove),
    TNew is T - TMove,
    TNew >=0,
    solution(NextC, NextMove, TNew).

num(1).
num(X) :- num(Y), X is Y + 1.

result(M, T) :- 
    num(T),
    solution([l,l,l,l,l], M, T).