%Ingresar una lista y determinar a través de una segunda lista todos los elementos que se repiten.

inicio:- writeln('Ingrese una lista'), leer(Lista), guarda_repetido(Lista,ListaR),
			writeln('Los elementos que se repiten son: '), write(ListaR).

leer([H|T]):- read(H),H\=[],leer(T).
leer([]).

pertenece([H|_],H).
pertenece([_|T],Elem):-pertenece(T,Elem).


% +\ se utiliza como not para no incluir en listaR elementos repetidos si 
% se encuentran mas de 2 veces en la lista original.

guarda_repetido([],[]).
guarda_repetido([H1|T1],[H1|T2]):-pertenece(T1,H1), guarda_repetido(T1,T2), \+ pertenece(T2,H1). 
guarda_repetido([_|T1],ListaR):-guarda_repetido(T1,ListaR).
