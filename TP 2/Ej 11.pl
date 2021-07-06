% Ingresar una lista de enteros e informar cuál es el mayor de todos los números.

inicio:- write("ingrese una lista de numeros: "), leer(Lista), max(Lista,f,Mayor),
			writeln("El numero mayor es: "), write(Mayor).
			
leer([H|T]):-read(H), H\=[], leer(T).
leer([]).


max([H|T],Aux,Mayor):- Aux = 'f', max([H|T],H,Mayor).
max([],Mayor,Mayor).
max([H|T],Aux,Mayor):-H>Aux,max(T,H,Mayor).
max([_|T],Aux,Mayor):-max(T,Aux,Mayor).
