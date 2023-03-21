aluno(1,joao,m).
aluno(2,antonio,m).
aluno(3,carlos,m).
aluno(4,luisa,f).
aluno(5,maria,f).
aluno(6,isabel,f).
curso(1,lei).
curso(2,lsirc).
curso(3,lsig).
%disciplina(cod,sigla,ano,curso)
disciplina(1,ed,2,1).
disciplina(2,ia,3,1).
disciplina(3,fp,1,2).
%inscrito(aluno,disciplina)
inscrito(1,1).
inscrito(1,2).
inscrito(5,3).
inscrito(5,5).
%nota(aluno,disciplina,nota)
nota(1,1,15).
nota(1,2,16).
nota(1,5,20).
nota(2,5,10).
nota(3,5,8).
%copia
copia(1,2).
copia(2,3).
copia(3,4).

alunos(L):-setof(Nome, aluno(_,Nome,_),L).

inscrito(Nome):-aluno(Id, Nome, _), inscrito(Id, _).
inscritos(Alunos):-setof(Nome, inscrito(Nome), Alunos).

nao_inscrito(Id, Nome):-aluno(Id,Nome,_), not(inscrito(Id,_)).
alunos_nao_inscritos(Alunos):-setof((Cod, Nome), nao_inscrito(Cod, Nome), Alunos).
