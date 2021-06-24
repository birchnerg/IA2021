% Ingresar una lista de números enteros y calcular su promedio. Respetar
% el formato del predicado promedio(L,S,C) donde L es la lista ingresada,
% S la sumatoria y C el contador de los elementos de la lista.

inicio:- write('ingrese una lista de elementos: '), leer(Lista), promedio(Lista,Suma,Cantidad),
			Prom is Suma / Cantidad, 
			write("La sumatoria de los elementos es: "), writeln(Suma),
			write("La cantidad de  elementos es: "), writeln(Cantidad),
			write("El promedio de los elementos es: "), writeln(Prom).

leer([H|T]):-read(H), H\=[], leer(T).
leer([]).

promedio([],0,0).
promedio([H|T], Suma, Cantidad):- promedio(T, Sum, Cant), Suma is Sum + H, Cantidad is Cant + 1.
