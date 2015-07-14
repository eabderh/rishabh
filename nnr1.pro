
simpleH([[5,5,1],[5,-5,2],[-5,-5,3],[-5,5,4]]).

t1([3,3,0]).
t2([-1,-1,0]).
t3([0,0,0]).
t4([-1,1,0]).
t5([0,-1,0]).


printList([]).
printList([E|L]) :-
	sepelem(E), nl, printList(L).

sepelem([]).
sepelem([X|Y]) :-
	write(X), sepelem(Y).

theClass([X],X).
theClass([_|Y],X) :-
	theClass(Y,X).

exclude_last([_], []).
exclude_last([X|Xs],[X|Y]) :-
	exclude_last(Xs,Y).

distanceR2([_],[_],[_]).
distanceR2(Xs, Ys, Dist) :-
	exclude_last(Xs,Xsub),
	exclude_last(Ys,Ysub),
	foldl(distpoint, Xsub, Ysub, 0, Sq),
	Dist is (Sq).
distpoint(X, Y, S, D) :-
	D is S+(Y-X)*(Y-X).

distanceAllVectors2(_,[],[]).
distanceAllVectors2(X,[Ya|Na],[Aa|Ra]) :-
	distanceR2(X,Ya,Aa),
	distanceAllVectors2(X,Na,Ra).




