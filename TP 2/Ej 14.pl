% Ingresar una lista y determinar el primer elemento que se repite.

inicio:- writeln('Ingrese una lista'), leer(Lista), busca_repetido(Lista).

leer([H|T]):- read(H),H\=[],leer(T).
leer([]).

pertenece([H|_],H).
pertenece([_|T],Elem):-pertenece(T,Elem).

busca_repetido([]):-write("No hay elementos repetidos").
busca_repetido([H|T]):-pertenece(T,H),write("El primer elemento que se repite es: "),writeln(H).
busca_repetido([_|T]):-busca_repetido(T).
