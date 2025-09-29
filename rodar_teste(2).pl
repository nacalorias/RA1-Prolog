% Teste 2: Perfil voltado para web/design
rodar_teste(2) :-
    limpar_respostas,
    assertz(resposta(1, n)),
    assertz(resposta(2, s)),
    assertz(resposta(3, s)),  
    assertz(resposta(4, s)),  
    assertz(resposta(5, s)),
    assertz(resposta(6, n)),
    assertz(resposta(7, n)),
    assertz(resposta(8, n)),
    assertz(resposta(9, s)),  
    assertz(resposta(10, n)),
    assertz(resposta(11, n)),
    assertz(resposta(12, s)),
    calcular_e_exibir_recomendacoes.
/*
 Resposta esperada
--- Resultado ---
Com base nas suas respostas, estas são as trilhas mais recomendadas para você:

desenvolvimento_web (16 pontos) - Criação de sites, aplicações e sistemas que rodam na internet, focando na experiência do usuário.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você se interessa por criar interfaces bonitas e fáceis de usar (design visual)?
    - Você prefere resolver problemas práticos e ver o resultado rapidamente?
    - Você é uma pessoa criativa e gosta de construir coisas novas do zero?
    - Você gosta de programar e de usar lógica para resolver problemas?

seguranca_da_informacao (9 pontos) - Proteção de sistemas, redes e dados contra ataques cibernéticos e acessos não autorizados.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você prefere resolver problemas práticos e ver o resultado rapidamente?
    - Você considera a ética e a responsabilidade digital temas muito importantes?

redes_e_infraestrutura (7 pontos) - Planejamento, implementação e gerenciamento da infraestrutura de TI, como servidores e redes de comunicação.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você prefere resolver problemas práticos e ver o resultado rapidamente?
    - Você é uma pessoa organizada e metódica?

inteligencia_artificial (5 pontos) - Desenvolvimento de sistemas que podem pensar, aprender e tomar decisões como seres humanos.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você gosta de programar e de usar lógica para resolver problemas?

ciencia_de_dados (0 pontos) - Análise e interpretação de grandes volumes de dados para extrair conhecimento e insights valiosos.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:

true
*/