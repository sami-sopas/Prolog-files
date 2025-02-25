%Completar las siguientes reglas en prolog y mostrar los resultados de sus consultas.

% 1. Función mayor_que/3: El tercer argumento regresa el número mayor de los tres argumentos
mayor_que(X, Y, Z, N) :- 
    N is max(X, max(Y, Z)).

% 2. leer_duplica/0: Lee un número y muestra su valor duplicado
leer_duplica :- 
    write('Ingrese un número: '), 
    read(X), 
    D is X * 2, 
    write('El doble es: '), 
    write(D), nl.

% 3. espar/0: Indica si un número leído es par o no
espar :- 
    write('Ingrese un número: '), 
    read(X), 
    (X mod 2 =:= 0 -> write('El número es par') ; write('El número es impar')), nl.

% 4. porcentaje/1: Calcula el porcentaje de ganados sobre jugados
porcentaje(N) :- 
    ganados(N, G), 
    jugados(N, J), 
    J > 0, 
    P is (G / J) * 100, 
    write(N), write(' ha ganado un '), write(P), write('% de sus juegos.'), nl.

% Base de conocimiento para ganados y jugados
ganados(juan,7).
ganados(susana,6).
ganados(pedro,2).
ganados(rosa,5).

jugados(juan,13).
jugados(susana,7).
jugados(pedro,3).
jugados(rosa,10).

% 5. fibo/2: Calcula el valor en la serie de Fibonacci
fibo(0, 0).
fibo(1, 1).
fibo(I, V) :- 
    I > 1, 
    I1 is I - 1, 
    I2 is I - 2, 
    fibo(I1, V1), 
    fibo(I2, V2), 
    V is V1 + V2.
