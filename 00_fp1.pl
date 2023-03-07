% escola(nome_politecnico, escola).

escola(estg, ipp).

% curso(sigla_curso, escola).

curso(lei, estg).

% uc(sigla_curso, sigla_uc, ano).

uc(lei, ai, 3).

% docente(sigla_uc, nome).

docente(ai, ramos).

% inscrito(sigla_uc, aluno).

inscrito(ai, micael).

% quais sao os docentes de uma instituição

docente_esta_na_instituicao(D, I):-docente(UC, D),uc(C, UC, _),curso(C, E),escola(E, I).

% quais sao os docente de uma escola

docente_na_escola(D, E):-docente(UC, D),uc(C, UC, _),curso(C, E).

% há ucs sem inscritos? em que cursos?

sem_incritos(E):-curso(C, E),uc(C, UC,_),incrito(UC, _).

% saber se um estudante percente a uma instituição

aluno_inst(E, I):-inscrito(UC, E),uc(Curso, UC, _),curso(Curso, Escola),escola(I, Escola)

% há ucs sem inscritos? em que cursos?

sem_inscritos(UC, C):-uc(C, UC, Ano),not(inscrito(UC, Aluno)).
