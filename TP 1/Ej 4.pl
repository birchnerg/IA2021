% HECHOS
hombre(abraham).
hombre(clancy).
hombre(herbert).
hombre(homero).
hombre(bart).
mujer(mona).
mujer(jacqueline).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(lisa).
mujer(maggie).
mujer(ling).
% padres(persona, madre, padre)
padres(herbert, mona, abraham).
padres(homero, mona, abraham).
padres(marge, jacqueline, clancy).
padres(patty, jacqueline, clancy).
padres(selma, jacqueline, clancy).
padres(bart, marge, homero).
padres(lisa, marge, homero).
padres(maggie, marge, homero).
padres(ling, selma, natalia_natalia).
% REGLAS
es_hermana(X,Y):-mujer(X), padres(X,M,P), padres(Y,M,P),X\=Y.
es_nieto(X,Y):-hombre(X), padres(X,M,_), padres(M,Y,_).
es_nieto(X,Y):-hombre(X), padres(X,M,_), padres(M,_,Y).
es_nieto(X,Y):-hombre(X), padres(X,_,P), padres(P,Y,_).
es_nieto(X,Y):-hombre(X), padres(X,_,P), padres(P,_,Y).
es_abuelo(X,Y):-hombre(X), padres(P,_,X), padres(Y,P,_).
es_abuelo(X,Y):-hombre(X), padres(P,_,X), padres(Y,_,P).
es_tia1(X,Y):-mujer(X), padres(Y,M,_), padres(M,M1,P1), padres(X,M1,P1),X\=M.
es_tia1(X,Y):-mujer(X), padres(Y,_,P), padres(P,M1,P1), padres(X,M1,P1).

es_tia2(X,Y):-mujer(X),padres(Y,M,_),es_hermana(X,M).
es_tia2(X,Y):-mujer(X),padres(Y,_,P),es_hermana(X,P).

