% HECHOS
hijo(juan,miguel).
hijo(jose,miguel).
hijo(miguel,roberto).
hijo(julio,roberto).
hijo(roberto,carlos).
% REGLAS
descendiente(X,Y):-hijo(X,Y).
descendiente(X,Y):-hijo(X,Z),descendiente(Z,Y).