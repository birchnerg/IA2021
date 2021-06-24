%Ingresar una lista de números enteros e informar cuánto da la
%sumatoria de ellos.

inicio:- write('ingrese una lista de elementos: '), leer(Lista), sumatoria(Lista,Suma), writeln("La suma de los elementos es: "), write(Suma).

leer([H|T]):-read(H), H\=[], leer(T).
leer([]).

sumatoria([], 0).
sumatoria([H|T], Suma):- sumatoria(T, Acum), Suma is Acum + H.