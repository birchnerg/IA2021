% Ingresar una lista de números enteros y calcular la diferencia entre el
% primero y el último de ellos.

inicio:- write('ingrese una lista de elementos: '), leer([H|T]),ultimo([H|T],L), Resta is H - L, writeln(Resta).

leer([H|T]):-read(H), H\=[], leer(T).
leer([]).

ultimo([H|[]], H).
ultimo([_|T], L):- ultimo(T, L).
