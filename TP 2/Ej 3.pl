%Ingresar una lista de elementos y mostrar su primer elemento.

inicio:- write('ingrese una lista de elementos: '), leer(Lista), mostrar(Lista).

leer([H|T]):-read(H), H\=[], leer(T).
leer([]).
mostrar([H|_]):- write("El primer elemento es: "), writeln(H).