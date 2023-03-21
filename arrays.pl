tam([], 0).
tam([H|R], C):-tam(R, C1), C is C1 + 1.

soma([], 0).
soma([H|R], S):-soma(R, S1), S is S1 + H.
