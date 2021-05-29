% HECHOS
observa(maria,omar).
observa(laura,omar).
observa(maria,flavio).
observa(gabriela,flavio).
observa(maria,carlos).

% CONSULTAS
/*
 ?- observa(maria,flavio).
true .

?- observa(maria,Quien).
Quien = omar .

?- observa(maria,_).
true .

?- observa(Quien,flavio).
Quien = maria .

?- observa(Quien1,Quien2).
Quien1 = maria,
Quien2 = omar .

?- observa(_,_).
true .

**** SI UTILIZAMOS ; BUSCA NUEVO VALORES PARA LAS VARIABLES ****
?- observa(maria,Quien).
Quien = omar ;
Quien = flavio ;
Quien = carlos.

?- observa(Quien,flavio).
Quien = maria ;
Quien = gabriela.

?- observa(Quien1,Quien2).
Quien1 = maria,
Quien2 = omar ;
Quien1 = laura,
Quien2 = omar ;
Quien1 = maria,
Quien2 = flavio ;
Quien1 = gabriela,
Quien2 = flavio ;
Quien1 = maria,
Quien2 = carlos.
*/
