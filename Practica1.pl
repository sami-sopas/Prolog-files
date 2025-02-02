% clausuas %
%relaciones (más de un argumento)
amigo(pedro, antonio).
amigo(pedro, flora).
amigo(pedro, juan).
amigo(pedro, vicente).
amigo(luis, felipe).
amigo(luis, maria).
amigo(luis, vicente).
amigo(carlos, paloma).
amigo(carlos, lucia).
amigo(carlos, vicente).
amigo(carlos, juan).
amigo(fernando, eva).
amigo(fernando, pedro).

%propiedad(un argumento)
millonario(pedro).
millonario(antonio).
millonario(flora).
millonario(felipe).
millonario(lucia).

mexicano(eva).
mexicano(pedro).
mexicano(luis).
mexicano(flora).
mexicano(felipe).
mexicano(lucia).

soltero(pedro).
soltero(flora).
soltero(eva).
soltero(luis).
casado(felipe,maria).
casado(carlos,lucia).

hermano(carlos,maria).
hermano(pedro,luis).

padre_de(carlos, fernando).
padre_de(antonio, maria).
padre_de(antonio, carlos).

%fin codigo prolog
%Consultas a la base de conocimiento:

%1.¿Tiene maria un padre millonario?
%  padre_de(Padre, maria), millonario(Padre).

%2. ¿Habrá alguien que sea el padre millonario de fernando?
%  padre_de(Padre, fernando), millonario(Padre).

%3. ¿Quiénes son los mexicanos millonarios y solteros del grupo?
%   mexicano(X), millonario(X), soltero(X).

%4. ¿Hay algún casado, millonario y mexicano???
%   millonario(Persona), mexicano(Persona), (casado(Persona,_);casado(_,Persona)).  El operador ; (o) indica que cualquiera de las dos condiciones puede ser verdadera.

%5. Vicente busca amigos de sus amigos que sean solteros y millonarios.
%   (amigo(vicente, AmigosI);amigo(AmigoI, vicente)), (amigo(AmigoI, Amigo); amigo(Amigo, AmigoI)), soltero(Amigo), millonario(Amigo). 

%6. ¿Cuáles son los yernos o nueras millonarios?
%   (casado(YernoONuera, EsposoOEsposa);casado(EsposoOEsposa, YernoONuera)), padre_de(Padre,EsposoOEsposa), millonario(YernoONuera).

%7. ¿Carlos tiene un cuñado millonario?
%   casado(carlos, Esposa), (hermano(Cunado, Esposa);hermano(Esposa, Cunado)), millonario(Cunado).

%¿Y el hermano de su esposa?
%   casado(carlos, Esposa), hermano(Hermano, Esposa), millonario(Hermano).
%¿Y la esposa de su hermano?
%    casado(carlos, Esposa), (hermano(Hermano, Esposa); hermano(Esposa, Hermano)).
%8. Par de amigos millonarios.
%   amigo(Amigo1, Amigo2), millonario(Amigo1), millonario(Amigo2).