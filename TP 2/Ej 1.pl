%Ingresar una lista de elementos y mostrarla por pantalla.

inicio:- write('ingrese una lista de elementos: '), leer(Lista), writeln(Lista).

leer([H|T]):-read(H), H\=[], leer(T).
leer([]).
