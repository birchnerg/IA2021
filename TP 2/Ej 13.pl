%Ingresar dos listas de elementos, concatenarlas (los elementos deben 
%ser asignados de a uno en la lista de salida) y mostrarlas en una tercera.

inicio:- writeln('Ingrese la primer lista de elementos: '), leer(Lista1),
		 writeln('Ingrese la segunda lista de elementos: '), leer(Lista2),
		 concatenar(Lista1, Lista2, ListaC), writeln(''), writeln(ListaC).

leer([H|T]):- read(H), H\=[], leer(T).
leer([]).

concatenar([],[],[]).
concatenar([],[H2|T2],[H2|T3]):- concatenar([],T2,T3).
concatenar([H1|T1],Lista2,[H1|T3]):-concatenar(T1,Lista2,T3).
