% HECHOS
origen_destino(ciudad1,ciudad2).
origen_destino(ciudad1,ciudad6).
origen_destino(ciudad6,ciudad7).
origen_destino(ciudad3,ciudad5).
origen_destino(ciudad3,ciudad4).
origen_destino(ciudad5,ciudad4).
origen_destino(ciudad5,ciudad7).

% REGLAS
conexion(A,B):-origen_destino(A,B).
conexion(A,B):-origen_destino(A,C),conexion(C,B).









