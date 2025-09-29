%           SISTEMA ESPECIALISTA PARA RECOMENDAÇÃO DE TRILHAS DE TI        
%                             (VERSÃO COM VALIDAÇÃO)                         
                                                                          
% Definição dinâmica:permite que fatos como respota/2 sejam adicionados
% ou removidos em tempo de execução.
% resposta(PerguntaID, RespostasUsuario).

:- dynamic resposta/2.
                                                                           
% BASE DE CONHECIMENTO                             
                                                                           
% FATOS: TRILHAS DE ESPECIALIZAÇÃO 
% Cada trilha representa uma área da TI.
% Formato: trilha(NomeDaTrilha, Descricao).

trilha(ciencia_de_dados, 'Análise e interpretação de grandes volumes de dados para extrair conhecimento e insights valiosos.').
trilha(desenvolvimento_web, 'Criação de sites, aplicações e sistemas que rodam na internet, focando na experiência do usuário.').
trilha(seguranca_da_informacao, 'Proteção de sistemas, redes e dados contra ataques cibernéticos e acessos não autorizados.').
trilha(inteligencia_artificial, 'Desenvolvimento de sistemas que podem pensar, aprender e tomar decisões como seres humanos.').
trilha(redes_e_infraestrutura, 'Planejamento, implementação e gerenciamento da infraestrutura de TI, como servidores e redes de comunicação.').

% FATOS: CARACTERÍSTICAS DE PERFIL 
% Formato: perfil(NomeDaTrilha, CaracteristicaAssociada, PesoDeRelevancia).
% Peso de 1 (pouco relevante) a 5 (muito relevante).

% Ciência de Dados
perfil(ciencia_de_dados, matematica_estatistica, 5).
perfil(ciencia_de_dados, programacao_logica, 4).
perfil(ciencia_de_dados, analise_de_dados, 5).
perfil(ciencia_de_dados, curiosidade_investigativa, 3).

% Desenvolvimento Web
perfil(desenvolvimento_web, design_visual, 3).
perfil(desenvolvimento_web, resolucao_problemas_concretos, 5).
perfil(desenvolvimento_web, criatividade, 4).
perfil(desenvolvimento_web, logica_de_programacao, 4).

% Segurança da Informação
perfil(seguranca_da_informacao, pensamento_sistemico, 5).
perfil(seguranca_da_informacao, resolucao_problemas_concretos, 4).
perfil(seguranca_da_informacao, etica_e_responsabilidade, 5).
perfil(seguranca_da_informacao, curiosidade_investigativa, 4).

% Inteligência Artificial
perfil(inteligencia_artificial, matematica_estatistica, 5).
perfil(inteligencia_artificial, logica_de_programacao, 5).
perfil(inteligencia_artificial, abstracao_de_problemas, 4).
perfil(inteligencia_artificial, curiosidade_investigativa, 3).

% Redes e Infraestrutura
perfil(redes_e_infraestrutura, pensamento_sistemico, 5).
perfil(redes_e_infraestrutura, hardware_e_sistemas, 4).
perfil(redes_e_infraestrutura, resolucao_problemas_concretos, 4).
perfil(redes_e_infraestrutura, organizacao, 3).


% FATOS: PERGUNTAS PARA O USUÁRIO
% São as questões que o sistema faz para avaliar o perfil da pessoa.
% Cada pergunta está associada a uma caracteristica.
% Formato: pergunta(ID, TextoDaPergunta, CaracteristicaQueAvalia).

pergunta(1, 'Você tem afinidade com matemática e estatística?', matematica_estatistica).
pergunta(2, 'Você gosta de programar e de usar lógica para resolver problemas?', logica_de_programacao).
pergunta(3, 'Você se interessa por criar interfaces bonitas e fáceis de usar (design visual)?', design_visual).
pergunta(4, 'Você é uma pessoa criativa e gosta de construir coisas novas do zero?', criatividade).
pergunta(5, 'Você prefere resolver problemas práticos e ver o resultado rapidamente?', resolucao_problemas_concretos).
pergunta(6, 'Você tem curiosidade sobre como as coisas funcionam "por baixo dos panos" (sistemas complexos)?', pensamento_sistemico).
pergunta(7, 'Você se interessa por analisar dados para encontrar padrões e informações escondidas?', analise_de_dados).
pergunta(8, 'Você gosta de investigar e descobrir como as coisas funcionam para encontrar falhas?', curiosidade_investigativa).
pergunta(9, 'Você considera a ética e a responsabilidade digital temas muito importantes?', etica_e_responsabilidade).
pergunta(10, 'Você gosta de pensar em problemas complexos e abstratos?', abstracao_de_problemas).
pergunta(11, 'Você tem interesse em montar e configurar computadores, servidores e redes?', hardware_e_sistemas).
pergunta(12, 'Você é uma pessoa organizada e metódica?', organizacao).


%                     MOTOR DE INFERÊNCIA E INTERFACE                         
                                                                            
% --- PREDICADO PRINCIPAL ---
% Predicado que inicia todo o processo interativo.
iniciar :-
    limpar_respostas,

    write('Bem-vindo ao Sistema de Recomendação de Trilhas!'), nl,
    write('---------------------------------------------'), nl,
    write('Responda às perguntas com \'s\' (sim) ou \'n\' (não).'), nl,
    nl,

    fazer_perguntas,
    calcular_e_exibir_recomendacoes.

% --- REGRAS DE CONTROLE DO FLUXO ---

limpar_respostas :-
    retractall(resposta(_, _)).

fazer_perguntas :-
    pergunta(ID, Texto, _),
    perguntar(ID, Texto),
    fail.
fazer_perguntas. 

% Regra para fazer uma única pergunta e armazenar a resposta do usuário.
perguntar(ID, Texto) :-
    format('~w~n', [Texto]), 
    read(RespostaUsuario),   
    (   (RespostaUsuario == s ; RespostaUsuario == n)
    ->  % Se a resposta for válida ('s' ou 'n'), armazena na memória.
        assertz(resposta(ID, RespostaUsuario))
    ;   % Se for inválida, exibe o erro e repete a mesma pergunta.
        write('Resposta inválida! Por favor, responda apenas com s ou n'), nl,
        perguntar(ID, Texto) 
    ).


% --- REGRAS DE CÁLCULO E EXIBIÇÃO ---

% Regra principal que orquestra o cálculo e a exibição dos resultados.
calcular_e_exibir_recomendacoes :-
    findall(
        Pontuacao-Trilha,
        (
            trilha(Trilha, _),
            calcular_pontuacao(Trilha, Pontuacao)
        ),
        Resultados
    ),
    sort(0, @>=, Resultados, Ranking),

    nl, write('--- Resultado ---'), nl,
    write('Com base nas suas respostas, estas são as trilhas mais recomendadas para você:'), nl,
    nl,

    exibir_ranking(Ranking).

% Regra para calcular a pontuação de UMA trilha específica.
calcular_pontuacao(Trilha, Pontuacao) :-
    findall(
        Peso,
        (
            % Para uma dada trilha, encontre uma característica e seu peso.
            perfil(Trilha, Caracteristica, Peso),
            % Encontre a pergunta associada a essa característica.
            pergunta(ID, _, Caracteristica),
            % Verifique se o usuário respondeu 'sim' a essa pergunta.
            resposta(ID, s)
        ),
        Pesos % Se todas as condições foram satisfeitas, adicione o Peso à lista 'Pesos'.
    ),
    % sum_list/2 soma todos os elementos da lista para obter a pontuação total.
    sum_list(Pesos, Pontuacao).

% Regra recursiva para exibir a lista de trilhas formatada.
exibir_ranking([]).
exibir_ranking([Pontuacao-Trilha | Outras]) :- 
    trilha(Trilha, Descricao),
    format('~w (~w pontos) - ~w~n', [Trilha, Pontuacao, Descricao]),

    justificar(Trilha),
    nl,

    exibir_ranking(Outras).

% Regra para justificar a recomendação de uma trilha.
justificar(Trilha) :-
    write('    Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:'), nl,
    % Busca todas as respostas 's' que levaram a esta recomendação.
    (
        perfil(Trilha, Caracteristica, _),
        pergunta(ID, TextoPergunta, Caracteristica),
        resposta(ID, s),
        format('    - ~w~n', [TextoPergunta]),
        fail
    );
    true. 

