%Ingresar una lista de elementos y mostrar su último elemento.
inicio:- write('ingrese una lista de elementos: '), leer(Lista), mostrar(Lista).

leer([H|T]):-read(H), H\=[], leer(T).
leer([]).

mostrar([H|[]]):- write("El ultimo elemento es: "), writeln(H).
mostrar([_|T]):- mostrar(T).