/*fatos*/
passaro(joao).
peixe(pedro).
minhoca(maria).
gato(miau).
pessoa(eu).

/* passaros gostam de minhocas */
gosta(X,Y) :- passaro(X), minhoca(Y).

/* gatos gostam de passaros */
gosta(X,Y) :- gato(X), passaro(Y).

/* gatos gostam de peixes */
gosta(X,Y) :- gato(X), peixe(Y).

/* gatos gostam de pessoas e vice-versa */
gosta(X,Y) :- gato(X), pessoa(Y).
gosta(X,Y) :- pessoa(X), gato(Y).

/* amigos gostam uns dos outros */
amigo(X,Y) :- gosta(X,Y), gosta(Y,X).


/* gatos comem o que gostam, exceto pessoas */
come(X,Y) :- gosta(gato, Y), not(pessoa(Y)).
