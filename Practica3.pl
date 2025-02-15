% Menu
entrada(paella).
entrada(gazpacho).
entrada(consome).
carne(filete_de_cerdo).
carne(pollo_asado).
pescado(trucha).
pescado(bacalao).
postre(flan).
postre(nueces_con_miel).
postre(naranja).

% Valor calorico de una racion
calorias(paella, 200).
calorias(gazpacho, 150).
calorias(consome, 300).
calorias(filete_de_cerdo, 400).
calorias(pollo_asado, 280).
calorias(trucha, 160).
calorias(bacalao, 300).
calorias(flan, 200).
calorias(nueces_con_miel, 500).
calorias(naranja, 50).

%****************Reglas*******************
%plato_principal(P) P es un plato principal si es carne
plato_principal(P):- carne(P).
plato_principal(P):- pescado(P).
comida_completa(Entrada, Principal, Postre):-entrada(Entrada),plato_principal(Principal), postre(Postre).



% 1-¿Cuáles son los postres a elegir?
postes_a_elegir(Postre):-
    postre(Postre).

% 2-¿Cuántas opciones de comidas completas hay con consomé en la entrada?
opciones_comida_con_consome(Count) :-
    findall((consome, Principal, Postre), comida_completa(consome, Principal, Postre), L),
    length(L, Count).

% 3-¿La paella es un plato principal?
paella_es_plato_principal:-
    plato_principal(paella). 

% 4-¿El pollo asado es un plato principal?
pollo_asado_es_plato_principal:-
    plato_principal(pollo_asado).