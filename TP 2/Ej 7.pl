% Ingresar una lista de elementos e informar cuántos elementos tiene.

inicio:- write('ingrese una lista de elementos: '), leer(Lista), contar(Lista,Cantidad), writeln("Cantidad elementos: "), write(Cantidad).

leer([H|T]):-read(H), H\=[], leer(T).
leer([]).

contar([], 0).
contar([_|T], Cantidad):- contar(T, Acum), Cantidad is Acum + 1.
