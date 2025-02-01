% Los hechos son afirmaciones entre uno o mas objetos (relaciones)

% Por ejemplo: Si quiero decir que a Juanito le gusta Aimep3, puedo escribir:
le_gusta(juan, aimep3).

% A Juanito le gusta leer
le_gusta(juan, leer).

% A Aimemp3 le gusta Tiktok
le_gusta(aimep3, tiktok).

% A Aimep3 le gusta jugar el Pozole
le_gusta(aimep3, pozole).

% Juan y Aimp3 juegan lol
juegan(juan, aimep3, lol).

% Pedro y Pablo juegan Futbol
juegan(pedro, pablo, futbol).

% Si quiero saber que le gusta a Juan, puedo preguntar:
% le_gusta(juan, X). (En la variable X, se va almacenar lo que le gusta a Juan) X = aimep3 ; X = leer.
% Nota: Como a Juan le gustan mas de una cosa, para imprimr las siguientes hay que presionar 'Barra espaciadora'

% Si quiero saber a quien le gusta leer, puedo preguntar:
% le_gusta(X, leer). X = juan

% Si quiero saber quienes jugan lol, puedo preguntar:
% juegan(X, Y, lol). X = juan, Y = aimep3

% Si quiero saber, con quien juega Pedro futbol, puedo preguntar:
% juegan(pedro, Y, futbol). Y = pablo


% Conjunciones: Uso del operador logico 'and' (',')
% Por ejemplo: Si quiero saber si a Juan le gusta Aimep3 y si a Aimep3 le gusta Juan, puedo preguntar:
% le_gusta(juan, aimep3), le_gusta(aimep3, juan). => false
