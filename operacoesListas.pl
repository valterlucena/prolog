:- use_module(library(apply)).

% elemento pertence a uma lista

pertence(X, [X|_]).
pertence(X, [_|T]) :- pertence(X, T).

% insere no inicio

insere(X,L,[X|L]).

% converte elementos da lista para valores absolutos

converteComMap(X,Y) :- maplist(abs, X, Y).

converte([], []).
converte([X|L1], [Y|L2]) :- abs(X,Y), converte(L1, L2).

% acha o ultimo elemento de uma lista

ultimo([X|[]], X).
ultimo([_|T], R) :- ultimo(T, R).

% concatenar duas listas

concatena([], L, L).
concatena(L, [], L).
concatena([X|L1], L2, [X|L3]) :- concatena(L1, L2, L3).

% maior

maior([X],X).
maior([X|T], R) :- maior(T, R1), (X >= R1 -> R is X; R is R1).

% menor

menor([X],X).
menor([X|T], R) :- menor(T, R1), (X =< R1 -> R is X; R is R1).


% dois consecutivos

consecutivos(X, Y, [X,Y|_]).
consecutivos(X, Y, [Y,X|_]).
consecutivos(X, Y, [_|T]) :- consecutivos(X, Y, T).

% somar

soma([], 0).
soma([X|T], R) :- soma(T, R1), R is R1+X.

% encontra n-esimo

nesimo(1, [X|_], X).
nesimo(I, [_|T], X) :- nesimo(I1, T, X), I is I1 + 1.

% encontra pelo indice

findAt(0, [X|_], X).
findAt(I, [_|T], X) :- findAt(I1, T, X), I is I1 + 1.

% lenght

tamanho([], 0).
tamanho([_|T], R) :- tamanho(T, R1), R is R1 + 1.

% remove
remover(X, [X|Y], Y).
remover(X, [Z|Y], [Z|R]) :- remover(X, Y, R).

% substitui um elemento por outro

subst(_,[],_,[]).
subst(X,[X|TX],Y,[Y|TY]) :- !, subst(X,TX,Y,TY).
subst(X,[N|TX],Y,[N|TY]) :- subst(X,TX,Y,TY).
