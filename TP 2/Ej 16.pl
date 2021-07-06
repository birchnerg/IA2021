%Ingresar una lista y un elemento e informar cuántas veces está ese
%elemento en la lista.

inicio:- writeln('Ingrese una lista'), leer(Lista),
         writeln('Ingresar un elemento'), read(Elemento),
		 cuenta_repetido(Lista,Cantidad,Elemento), writeln(Cantidad).

leer([H|T]):- read(H),H\=[],leer(T).
leer([]).



cuenta_repetido([],0,_).
cuenta_repetido([H|T],Cantidad,Elemento):-H=Elemento, cuenta_repetido(T,Acum,Elemento), Cantidad is Acum + 1.
cuenta_repetido([_|T],Cantidad,Elemento):-cuenta_repetido(T,Cantidad,Elemento).
