% HECHOS
menu:-writeln('Factorial de un numero'),
      writeln('Ingrese un numero (0 para salir)'),
      read(N),
      factorial(N, Acum),
      write('El resultado es: '), writeln(Acum),
      N \= 0,
      menu.
menu:-writeln("Adios").

% REGLAS
factorial(0,1).
factorial(N,X):-NA is N-1, factorial(NA, XA), X is N*XA.
