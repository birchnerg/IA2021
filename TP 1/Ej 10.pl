% HECHOS
requiere(a,c).
requiere(c,d).
requiere(b,d).
requiere(b,f).
requiere(d,e).
requiere(e,h).
requiere(e,i).
requiere(f,g).
requiere(h,j).
requiere(i,j).
requiere(g,j).

% REGLAS
requiere_de(X,Y):-requiere(X,Y).
requiere_de(X,Y):-requiere(X,Z),requiere_de(Z,Y).
