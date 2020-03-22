% Presentado por Fabian Alexander Franco Quiroga - 20152020048
% Ejemplo de familias
%

hombre('Fabian').
hombre('Alexander').
hombre('Sebastian').
hombre('Alejandro').
hombre('Nicolas').
hombre('David').
hombre('Julian').
hombre('Camilo').
hombre('Felipe').

mujer('Gabriela').
mujer('Carmen').
mujer('Kelly').
mujer('Sandra').
mujer('Cristina').
mujer('Kenny').
mujer('Juliana').
mujer('Andrea').
mujer('Luisa').
mujer('Laura').

padre('Sebastian','Fabian').
padre('Gabriela','Fabian').
padre('Sebastian','Felipe').
padre('Gabriela','Felipe').

padre('Alejandro','Kenny').
padre('Carmen','Kenny').
padre('Alejandro','Juliana').
padre('Carmen','Juliana').
padre('Alejandro','Cristina').
padre('Carmen','Cristina').

padre('Fabian','Nicolas').
padre('Yaneth','Nicolas').

padre('Juliana','David').
padre('Juliana','Julian').

padre('David','Andrea').

padre('Kelly','Luisa').
padre('Kenny','Luisa').

padre('Andrea','Laura').
padre('Luisa','Laura').

padre('Carlos','Camilo').
padre('Laura','Camilo').

hijo(x,y):- padre(y,x).
casado(x, y):- padre(x,z), padre(y,z).
hermano(x,y):- padre(p,x), padre(p,y), x\==y.
nieto(x,y):- padre(z,x),padre(y,z), x\==y.
abuelo(x,y):- nieto(z,x).
bisabuelo(x,y):- padre(x,z), abuelo(z,y).
bisnieto(x,y):- bisabuelo(y,x).
cuniado(x,y):- casado(x,z), hermano(z,y).

















