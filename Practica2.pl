hombre(juan).
hombre(jj).
hombre(pepe).
hombre(luis).
hombre(carlos).

mujer(laura).
mujer(julia).
mujer(eva).
mujer(karla).
mujer(lupe).

cabello_rubio(juan).
cabello_rubio(julia).
cabello_rubio(lupe).

cabello_rojo(karla).
cabello_rojo(jj).

cabello_oscuro(carlos).
cabello_oscuro(eva).
cabello_oscuro(luis).

le_gusta(jj,juan).
le_gusta(pepe,laura).
le_gusta(juan,eva).

actor_actriz(jj).
actor_actriz(pepe).
actor_actriz(eva).

ingeniero(julia).
ingeniero(karla).
ingeniero(luis).

cantante(lupe).
cantante(carlos).

amigo_de(lupe,carlos).
amigo_de(juan,eva).
amigo_de(pedro,julia).
amigo_de(karla,lupe).
amigo_de(eva,jj).
amigo_de(luis,carlos).
amigo_de(karla,eva).
amigo_de(jj,juan).
amigo_de(pepe,lupe).
amigo_de(pepe,jj).
amigo_de(pepe,juan).
amigo_de(laura,juan).
amigo_de(laura,jj).

% 1-¿A laura le gustan las personas con cabello oscuro?
gusta_cabello_oscuro_laura :-
    le_gusta(laura,Persona),
    cabello_oscuro(Persona).

% 2-¿A quién o quienes les gustan las personas con cabello rubio?
gusta_persona_cabello_rubio(Persona) :-
    le_gusta(Persona,Alguien),
    cabello_rubio(Alguien).

% 3-¿Cuáles son las mujeres pelirrojas del grupo?
mujer_pelirroja(Persona) :-
    mujer(Persona),
    cabello_rojo(Persona).

% 4-¿Habrá un par de amigos en los que ambos sean cantantes?
par_amigos_cantantes(Amigo1,Amigo2) :-
    (amigo_de(Amigo1,Amigo2);amigo_de(Amigo2,Amigo1)),
    cantante(Amigo1),
    cantante(Amigo2).

% 5-¿Quién es el cantante, cabello oscuro, y amigo de un ingeniero?
cantante_oscuro_amigo_ingeniero(X) :-
    cantante(X),
    cabello_oscuro(X),
    (amigo_de(X,Y);amigo_de(Y,X)),
    ingeniero(Y).

% 6-¿Quién es el amigo de eva que tiene como amig@ al actor o actriz pelirojo?
amigo_de_eva_con_actor_pelirrojo(X) :-
    (amigo_de(eva,X);amigo_de(X,eva)),
    (amigo_de(X,Y);amigo_de(Y,X)),
    actor_actriz(Y),
    cabello_rojo(Y).

% 7-¿Cuáles son los amigos en común entre laura y la persona que le gusta?
amigos_comunes_laura(PersonaComun) :-
    le_gusta(laura, PersonaGustada),
    (amigo_de(laura,PersonaComun);amigo_de(PersonaComun,laura)),
    (amigo_de(PersonaGustada,PersonaComun);amigo_de(PersonaComun,PersonaGustada)).

% 8-¿Quiénes son las parejas de amigos donde uno es hombre y el otro mujer?
pareja_amigos_hombre_mujer(Amigo1,Amigo2) :-
    (amigo_de(Amigo1,Amigo2);amigo_de(Amigo2,Amigo1)),
    hombre(Amigo1),
    mujer(Amigo2).

% 9-¿Quién o quiénes son las ó los amigos del mismo sexo de un cantante de cabello oscuro?
amigo_mismo_sexo_cantante_oscuro(Y, X) :-
    cantante(X),
    cabello_oscuro(X),
    (amigo_de(X,Y);amigo_de(Y,X)),
    ( (hombre(X),hombre(Y)) ; (mujer(X),mujer(Y)) ).