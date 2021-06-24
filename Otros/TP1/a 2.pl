origen_conexion_destino(ciudad1,True,ciudad2).
origen_conexion_destino(ciudad1,True,ciudad6).
origen_conexion_destino(ciudad1,ciudad6,ciudad7).
origen_conexion_destino(ciudad3,True,ciudad4).
origen_conexion_destino(ciudad3,ciudad5,ciudad4).
origen_conexion_destino(ciudad3,ciudad5,ciudad7).

conexion(A,C,B):-origen_conexion_destino(A,C,B).
