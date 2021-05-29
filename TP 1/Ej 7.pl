% HECHOS
menu:-writeln('Ingrese el primer numero: '),read(N1),
      writeln('Ingrese el segundo numero: '),read(N2),
      writeln('1 - Suma'),
      writeln('2 - Resta'),
      writeln('3 - Multiplicacion'),
      writeln('4 - Division'),
      writeln('5 - Salir'),
      read(Opc),
      Opc \= 5,
      opcion(Opc,N1,N2),
      menu.
menu:-writeln("Adios").

% REGLAS

opcion(1,N1,N2):- Suma is N1+N2, write('La suma es: '), writeln(Suma).
opcion(2,N1,N2):- Resta is N1-N2, write('La resta es: '), writeln(Resta).
opcion(3,N1,N2):- Multiplicacion is N1*N2, write('La multiplicacion es: '), writeln(Multiplicacion).
opcion(4,N1,N2):- Division is N1/N2, write('La division es: '), writeln(Division).