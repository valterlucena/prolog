notas(joao, 5.0, 7.0, 8.0).
notas(maria, 6.0, 6.0, 6.0).
notas(joana, 8.0, 5.1, 10).
notas(mariana, 9.0, 9.0, 3.0).
notas(cleuza, 8.5, 7.0, 8.6).
notas(jose, 3.5, 3.0, 2.0).
notas(mary, 10.0, 8.0, 7.0).

media(X, Media) :- notas(X, N1, N2, N3), Media is ((N1 + N2 + N3) / 3).

situacao(X, Situacao) :- media(X, Media), Media < 4.0, Situacao = reprovado.
situacao(X, Situacao) :- media(X, Media), Media > 3.9, Media < 7.0, Situacao = final.
situacao(X, Situacao) :- media(X, Media), Media > 6.9, Situacao = aprovado.

:- initialization(main).

main :- 
	read(X),
	situacao(X, S),
	write(S), nl,
	halt(0).
