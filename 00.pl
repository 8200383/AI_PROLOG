fica(porto, portugal).

passa(douro, porto).

rio_passa_em_pt(R):-passa(R,C),fica(C, portugal).

rio_passa_em_pais(R, P):-passa(R,C),fica(C, P).

% escola(nome_politecnico, escola).
% curso(sigla_curso, escola).
% uc(sigla_curso, sigla_uc, ano).
% docente(sigla_uc, nome).
% inscrito(sigla_uc, aluno).

% fica(_, portugal).
% fica(_, x).
% passa(_, x). % Em que cidades passa os rios?
% passa(x, _). % 

% Que rios passam em Portugal?
% passa(R, C),fica(C, portugal).

% Todos os rios em Portugal?
% rio_passa_em_pt(x).
