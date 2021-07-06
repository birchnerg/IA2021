% Ingresar una lista de enteros e informar cuál es el menor de todos los números.

inicio:- write("ingrese una lista de numeros: "), leer(Lista), min(Lista,f,Menor),
			writeln("El numero menor es: "), write(Menor).
			
leer([H|T]):-read(H), H\=[], leer(T).
leer([]).


min([H|T],Aux,Menor):- Aux = 'f', min([H|T],H,Menor).
min([],Menor,Menor).
min([H|T],Aux,Menor):-H<Aux,min(T,H,Menor).
min([_|T],Aux,Menor):-min(T,Aux,Menor).
