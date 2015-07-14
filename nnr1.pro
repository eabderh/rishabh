printList([]).
printList([E|L]):- sepelem(E), nl, printList(L). 	
sepelem([]).                					    
sepelem([X|Y]):- write(X), sepelem(Y).

theClass([X],X).
theClass([_|Y],X):-theClass(Y,X).

distanceR2([_],[_],[_]).
distanceR2(Xs, Ys, Dist) :- foldl(distpoint, Xs, Ys, 0, Sq),Dist is (Sq).
distpoint(X, Y, S, D) :- D is S+(Y-X)*(Y-X).

distanceAllVectors2([_|_],[_|_],[_|_]).
distanceAllVectors2(X,[Ya|Na],[Aa|Ra]):- distanceR2(X,Ya,Aa),distanceAllVectors2(X,Na,Ra). 

