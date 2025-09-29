% -------------------------------------------------------------------
% SISTEMA ESPECIALISTA PARA RECOMENDAÇÃO DE TRILHAS DE ESPECIALIZAÇÃO
% VERSÃO REATORADA - ESTILO CLÁSSICO/DIDÁTICO
% -------------------------------------------------------------------

:- dynamic resposta/2.

% ===================================================================
% SEÇÃO 1: BASE DE CONHECIMENTO (FATOS)
% ===================================================================
% Esta seção não precisa de alterações. A definição de fatos é a
% base do Prolog em qualquer estilo.

trilha(ciencia_de_dados, 'Análise e interpretação de grandes volumes de dados para extrair conhecimento e insights.').
trilha(desenvolvimento_web, 'Criação de sites, aplicações e sistemas que rodam na web, com foco em front-end e back-end.').
trilha(seguranca_da_informacao, 'Proteção de sistemas, redes e dados contra ataques, roubos e danos.').
trilha(redes_e_infraestrutura, 'Gerenciamento e manutenção de redes de computadores, servidores e toda a infraestrutura de TI.').
trilha(inteligencia_artificial, 'Desenvolvimento de sistemas que podem pensar, aprender e tomar decisões como humanos.').

perfil(ciencia_de_dados, matematica_estatistica, 5).
perfil(ciencia_de_dados, logica_programacao, 4).
perfil(ciencia_de_dados, visualizacao_dados, 3).
perfil(ciencia_de_dados, curiosidade_investigativa, 4).
perfil(desenvolvimento_web, logica_programacao, 4).
perfil(desenvolvimento_web, design_visual, 4).
perfil(desenvolvimento_web, experiencia_usuario, 5).
perfil(desenvolvimento_web, resolucao_problemas, 3).
perfil(seguranca_da_informacao, pensamento_sistemico, 5).
perfil(seguranca_da_informacao, etica_responsabilidade, 5).
perfil(seguranca_da_informacao, resolucao_problemas, 4).
perfil(seguranca_da_informacao, curiosidade_investigativa, 3).
perfil(redes_e_infraestrutura, pensamento_sistemico, 5).
perfil(redes_e_infraestrutura, resolucao_problemas, 4).
perfil(redes_e_infraestrutura, interesse_hardware, 4).
perfil(redes_e_infraestrutura, atencao_detalhes, 3).
perfil(inteligencia_artificial, matematica_estatistica, 5).
perfil(inteligencia_artificial, logica_programacao, 5).
perfil(inteligencia_artificial, pensamento_abstrato, 4).
perfil(inteligencia_artificial, curiosidade_investigativa, 3).

pergunta(1, 'Você tem afinidade com matemática e estatística?', matematica_estatistica).
pergunta(2, 'Você gosta de resolver quebra-cabeças e desafios lógicos com programação?', logica_programacao).
pergunta(3, 'Você se interessa por criar gráficos e dashboards para apresentar informações?', visualizacao_dados).
pergunta(4, 'Você é do tipo que gosta de investigar a fundo para descobrir como as coisas funcionam?', curiosidade_investigativa).
pergunta(5, 'Você se preocupa com a aparência, cores e a harmonia visual de um site ou aplicativo?', design_visual).
pergunta(6, 'Você pensa em como tornar a navegação de um sistema fácil e agradável para o usuário?', experiencia_usuario).
pergunta(7, 'Você gosta de encontrar e consertar erros e bugs em sistemas?', resolucao_problemas).
pergunta(8, 'Você consegue enxergar como várias partes de um sistema se conectam e interagem?', pensamento_sistemico).
pergunta(9, 'Para você, é fundamental seguir regras e garantir a segurança das informações?', etica_responsabilidade).
pergunta(10, 'Você tem interesse em montar e configurar computadores, servidores e roteadores?', interesse_hardware).
pergunta(11, 'Você é uma pessoa detalhista e organizada?', atencao_detalhes).
pergunta(12, 'Você se sente atraído pela ideia de criar algoritmos complexos e modelos preditivos?', pensamento_abstrato).

% ===================================================================
% SEÇÃO 2: MOTOR DE INFERÊNCIA E INTERFACE (REGRAS)
% ===================================================================

% --- Predicado principal ---
iniciar :-
    format('~N====================================================~n'),
    format('  Bem-vindo ao Sistema de Recomendação de Trilhas!  ~n'),
    format('====================================================~n'),
    format('Responda às perguntas com \'s.\' (sim) ou \'n.\' (não).~n'),
    format('ATENÇÃO: Lembre-se do ponto final (.) após a resposta.~n~n'),
    limpar_respostas,
    fazer_perguntas,
    analisar_perfil.

limpar_respostas :- retractall(resposta(_, _)).

% --- Questionário usando recursão (Estilo Clássico) ---
fazer_perguntas :-
    % 1. Encontramos todas as perguntas e criamos uma lista com seus IDs.
    findall(ID, pergunta(ID, _, _), ListaIDs),
    % 2. Chamamos a regra recursiva para processar a lista.
    processa_lista_de_perguntas(ListaIDs).

% Caso base: se a lista de perguntas está vazia, terminamos.
processa_lista_de_perguntas([]).
% Caso recursivo: processa a cabeça (H) e depois o resto da lista (T).
processa_lista_de_perguntas([H|T]) :-
    pergunta(H, Texto, _), % Encontra o texto da pergunta com o ID H
    perguntar(H, Texto),     % Faz a pergunta
    processa_lista_de_perguntas(T). % Chama a recursão para o resto da lista

% --- Interação com o usuário usando read/1 (Estilo Clássico) ---
perguntar(ID, Texto) :-
    write(Texto), nl,
    read(Resposta), % Lê um termo Prolog (ex: s. ou n.)
    validar_e_armazenar(ID, Resposta).

validar_e_armazenar(ID, s) :- assertz(resposta(ID, s)).
validar_e_armazenar(ID, n) :- assertz(resposta(ID, n)).
validar_e_armazenar(ID, _) :-
    write('Resposta inválida. Por favor, responda apenas com s. ou n.'), nl,
    pergunta(ID, Texto, _),
    perguntar(ID, Texto).

% --- Lógica de Análise (sem alterações, já usa recursão clássica) ---
analisar_perfil :-
    calcular_pontuacoes(Ranking),
    exibir_resultados(Ranking).

calcular_pontuacoes(Ranking) :-
    findall(Trilha, trilha(Trilha, _), Trilhas),
    calcular_pontuacao_de_cada_trilha(Trilhas, Pontuacoes),
    sort(1, @>=, Pontuacoes, Ranking).

calcular_pontuacao_de_cada_trilha([], []).
calcular_pontuacao_de_cada_trilha([Trilha|RestoTrilhas], [Pontuacao-Trilha|RestoPontuacoes]) :-
    pontuacao_trilha(Trilha, Pontuacao),
    calcular_pontuacao_de_cada_trilha(RestoTrilhas, RestoPontuacoes).

pontuacao_trilha(Trilha, PontuacaoFinal) :-
    findall(Peso-Caracteristica, perfil(Trilha, Caracteristica, Peso), Perfis),
    somar_pontos(Perfis, 0, PontuacaoFinal).

somar_pontos([], PontuacaoAtual, PontuacaoAtual).
somar_pontos([Peso-Caracteristica|Resto], PontuacaoAtual, PontuacaoFinal) :-
    pergunta(ID, _, Caracteristica),
    resposta(ID, s), !,
    NovaPontuacao is PontuacaoAtual + Peso,
    somar_pontos(Resto, NovaPontuacao, PontuacaoFinal).
somar_pontos([_|Resto], PontuacaoAtual, PontuacaoFinal) :-
    somar_pontos(Resto, PontuacaoAtual, PontuacaoFinal).

% --- Exibição de Resultados (exibir_ranking já é recursivo) ---
exibir_resultados(Ranking) :-
    nl, format('~N====================================================~n'),
    format('                RESULTADO DA ANÁLISE                 ~n'),
    format('====================================================~n'),
    write('Com base em suas respostas, estas são as trilhas mais recomendadas para você:'), nl, nl,
    exibir_ranking(Ranking).

exibir_ranking([]).
exibir_ranking([Pontuacao-Trilha|Resto]) :-
    trilha(Trilha, Descricao),
    format('--- ~w (Pontuação: ~w) ---~n', [Trilha, Pontuacao]),
    format('~w~n', [Descricao]),
    justificar_recomendacao(Trilha), nl,
    exibir_ranking(Resto).

% --- Justificativa usando loop de falha (Estilo Clássico) ---
justificar_recomendacao(Trilha) :-
    write('Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:'), nl,
    % Este é um "loop de falha". Prolog tenta satisfazer o objetivo.
    % Se consegue, ele imprime e o `fail` força o backtracking para
    % encontrar a próxima solução. O `; true` no final garante que a
    % regra como um todo tenha sucesso no final.
    (
        perfil(Trilha, Caracteristica, Peso),
        pergunta(ID, _, Caracteristica),
        resposta(ID, s),
        format('  - ~w (relevância: ~w pontos)~n', [Caracteristica, Peso]),
        fail
    ;
        true
    ).

% ===================================================================
% SEÇÃO 3: ROTINAS DE TESTE AUTOMATIZADO
% ===================================================================
% A lógica aqui não muda, pois a função dela é apenas carregar os fatos.

rodar_teste(Arquivo) :-
    limpar_respostas,
    consult(Arquivo),
    format('~n--- Rodando teste com o arquivo: ~w ---~n', [Arquivo]),
    analisar_perfil.

rodar_teste_swish(NomeDoTeste) :-
    format('~n--- Rodando teste (SWISH): ~w ---~n', [NomeDoTeste]),
    analisar_perfil.


% Perfil: Aluno com forte inclinação para lógica e dados.
% Espera-se recomendação alta para Ciência de Dados e Inteligência Artificial.

resposta(1, s).  % matematica_estatistica
resposta(2, s).  % logica_programacao
resposta(3, s).  % visualizacao_dados
resposta(4, s).  % curiosidade_investigativa
resposta(5, n).  % design_visual
resposta(6, n).  % experiencia_usuario
resposta(7, s).  % resolucao_problemas
resposta(8, n).  % pensamento_sistemico
resposta(9, n).  % etica_responsabilidade
resposta(10, n). % interesse_hardware
resposta(11, s). % atencao_detalhes
resposta(12, s). % pensamento_abstrato




% Perfil: Aluno com forte inclinação para design e experiência do usuário.
% Espera-se recomendação alta para Desenvolvimento Web.

resposta(1, n).  % matematica_estatistica
resposta(2, s).  % logica_programacao
resposta(3, n).  % visualizacao_dados
resposta(4, n).  % curiosidade_investigativa
resposta(5, s).  % design_visual
resposta(6, s).  % experiencia_usuario
resposta(7, s).  % resolucao_problemas
resposta(8, s).  % pensamento_sistemico
resposta(9, n).  % etica_responsabilidade
resposta(10, n). % interesse_hardware
resposta(11, s). % atencao_detalhes
resposta(12, n). % pensamento_abstrato



% Perfil: Aluno com forte inclinação para sistemas, redes e segurança.
% Espera-se recomendação alta para Seguranca da Informacao e Redes e Infraestrutura.

resposta(1, n).  % matematica_estatistica
resposta(2, s).  % logica_programacao
resposta(3, n).  % visualizacao_dados
resposta(4, s).  % curiosidade_investigativa
resposta(5, n).  % design_visual
resposta(6, n).  % experiencia_usuario
resposta(7, s).  % resolucao_problemas
resposta(8, s).  % pensamento_sistemico
resposta(9, s).  % etica_responsabilidade
resposta(10, s). % interesse_hardware
resposta(11, s). % atencao_detalhes
resposta(12, n). % pensamento_abstrato