%Ingresar una lista de elementos y mostrar sus dos primeros elementos.}

inicio:- write('ingrese una lista de elementos: '), leer(Lista), mostrar(Lista),msj(), mos(Lista, 2).

leer([H|T]):-read(H), H\=[], leer(T).
leer([]).
mostrar([H|T]):- write("El primer elemento es: "), writeln(H), mostrar2(T).
mostrar2([H|_]):- write("El segundo elemento es: "), writeln(H).

msj():- writeln("***** RECURSIVO ******").

mos(_,0).
mos([H|T], Resto):- writeln(H), Restonvo is Resto - 1, mos(T,Restonvo).
