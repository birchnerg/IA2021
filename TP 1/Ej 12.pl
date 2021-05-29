% HECHOS
menu:-writeln('Sumatoria de un numero'),
      writeln('Ingrese un numero (0 para salir)'),
      read(N),
      sum(N, Acum),
      write('El resultado es: '), writeln(Acum),
      N \= 0,
      menu.
menu:-writeln("Adios").

% REGLAS
sum(0,0).
sum(N,X):-NA is N-1, sum(NA, XA), X is N+XA.
