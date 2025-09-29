%           SISTEMA ESPECIALISTA PARA RECOMENDAÇÃO DE TRILHAS DE TI        
%                             (VERSÃO COM VALIDAÇÃO)                         
                                                                          
% --- DEFINIÇÃO DINÂMICA ---

:- dynamic resposta/2.
                                                                           
%                             BASE DE CONHECIMENTO                             
                                                                           
% -*- FATOS: TRILHAS DE ESPECIALIZAÇÃO -*-
% Formato: trilha(NomeDaTrilha, Descricao).

trilha(ciencia_de_dados, 'Análise e interpretação de grandes volumes de dados para extrair conhecimento e insights valiosos.').
trilha(desenvolvimento_web, 'Criação de sites, aplicações e sistemas que rodam na internet, focando na experiência do usuário.').
trilha(seguranca_da_informacao, 'Proteção de sistemas, redes e dados contra ataques cibernéticos e acessos não autorizados.').
trilha(inteligencia_artificial, 'Desenvolvimento de sistemas que podem pensar, aprender e tomar decisões como seres humanos.').
trilha(redes_e_infraestrutura, 'Planejamento, implementação e gerenciamento da infraestrutura de TI, como servidores e redes de comunicação.').

% --- FATOS: CARACTERÍSTICAS DE PERFIL ---
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


% --- FATOS: PERGUNTAS PARA O USUÁRIO ---
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
                                                                           
