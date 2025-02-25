% I. valorcalorico_comida/4
% % valorcalorico_comida (Entrada, Principal, Postre, Valor),
% donde valor será la suma de calorías de los tres platos que
% componen la comida completa.

valorcalorico_comida(Entrada, Principal, Postre, Valor):-
   comida_completa(Entrada, Principal, Postre),
    calorias(Entrada, CaloriasEntrada),
    calorias(Principal, CaloriasPrincipal),
    calorias(Postre, CaloriasPostre),
    Valor is CaloriasEntrada + CaloriasPrincipal + CaloriasPostre.

% II. comida_equilibrada/3
% % comida_equilibrada(Entrada, Principal, Postre), la comida
% completa será equilibrada si la suma del valor calórico de los tres
% platos es menor o igual a 800 calorías.

comida_equilibrada(Entrada, Principal, Postre):-
    comida_completa(Entrada, Principal, Postre),
    valorcalorico_comida(Entrada, Principal, Postre, Valor),
    Valor =< 800.

% 1. ¿Cuántas son las comidas equilibradas que tienen filete_de_cerdo como plato principal?
comidas_equilibradas_filete_de_cerdo(Count):-
    findall((Entrada, Principal, Postre), comida_equilibrada(Entrada, Principal, Postre), L),
    length(L, Count).

% 2. ¿Cuáles son las comidas que tienen un valor calórico de 500 calorías?
comidas_valor_calorico_500(Entrada, Principal, Postre):-
    valorcalorico_comida(Entrada, Principal, Postre, 500).

% 3. ¿Cuáles son las comidas completas que tienen un valor calórico de 500 calorías?
comidas_completas_valor_calorico_500(Entrada, Principal, Postre):-
    comida_completa(Entrada, Principal, Postre),
    valorcalorico_comida(Entrada, Principal, Postre, 500).

% 4. ¿Cuáles son las comidas equilibradas que tienen naranja como postre?
comidas_equilibradas_naranja(Entrada, Principal):-
    comida_equilibrada(Entrada, Principal, naranja).