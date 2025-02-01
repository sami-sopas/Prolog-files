% Hechos (Por ejemplo: 'El leon es un animal')
animal(leon).
animal(perro).
animal(iguana).
animal(gallina).
animal(pato).
animal(gato).

% Cargamos File a Prolog
% 1. swipl in console
% 2. load_files('Introduccion.pl').
% 3. Hacemos una pregunta para comprobar (Por ejemplo: animal(leon). => true)
% 4. Si queremos agregar un nuevo hecho, (Por ejemplo: animal(gato).) Lo podemos agregar

animal(gato).

% Despues, necesitaremos volver a recompilar el archivo Prolog con el comando make.
% Podemos hacer de nuevo la pregunta animal(gato). y nos devolvera true.

% Para salir de Prolog, escribimos halt. en la consola.