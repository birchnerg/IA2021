% HECHOS
integra_grupo(1, brasil).
integra_grupo(1, españa).
integra_grupo(1, jamaica).
integra_grupo(1, italia).
integra_grupo(2, argentina).
integra_grupo(2, nigeria).
integra_grupo(2, holanda).
integra_grupo(2, escocia).

% REGLAS
son_rivales(X,Y):-integra_grupo(W,X),integra_grupo(W,Y),X\==Y.

% CONSULTAS
/*
?- son_rivales(argentina,brasil).
false.

?- son_rivales(holanda,X).
X = argentina ;
X = nigeria ;
X = escocia.
*/
