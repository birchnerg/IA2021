%En una base de hechos hay un registro de personas y viajes realizados:
%persona(nombre, [lista ciudades visitó])
%Construir una regla que permita verificar si una persona visitó una
%determinada ciudad (datos de entrada: nombre persona y ciudad).

%Hechos
persona(juan,[rosario,cordoba]).
persona(julia,[salta,rosario]).
persona(ana,[jujuy]).

pertenece([H|_],H).
pertenece([_|T],Elem):-pertenece(T,Elem).

visito(X,Y):-persona(X,Ciudades), pertenece(Ciudades,Y).