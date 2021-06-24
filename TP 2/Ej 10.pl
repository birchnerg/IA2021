% Ingresar una lista y un elemento e informar si ese elemento está en la lista.

inicio:- write("ingrese una lista de elementos: "), leer(Lista),
			writeln("ingrese un elemento para buscar en la lista:"), read(X), buscar(X,Lista).
			
leer([H|T]):-read(H), H\=[], leer(T).
leer([]).

buscar(X,[]):- writeln(X), write(" no se encuentra en la lista").
buscar(X,[X,_]):- writeln(X), write(" se encuentra en la lista").
buscar(X,[_,T]):- buscar(T,X). 

