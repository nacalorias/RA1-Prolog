
% Teste 3: Perfil voltado para redes/segurança
rodar_teste(3) :-
    limpar_respostas,
    assertz(resposta(1, n)),
    assertz(resposta(2, s)),
    assertz(resposta(3, n)),
    assertz(resposta(4, n)),
    assertz(resposta(5, s)),  
    assertz(resposta(6, s)),  
    assertz(resposta(7, n)),
    assertz(resposta(8, s)),  
    assertz(resposta(9, s)),  
    assertz(resposta(10, n)),
    assertz(resposta(11, s)), 
    assertz(resposta(12, s)),
    calcular_e_exibir_recomendacoes.
/*
 Resposta esperada
--- Resultado ---
Com base nas suas respostas, estas são as trilhas mais recomendadas para você:

seguranca_da_informacao (18 pontos) - Proteção de sistemas, redes e dados contra ataques cibernéticos e acessos não autorizados.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você tem curiosidade sobre como as coisas funcionam "por baixo dos panos" (sistemas complexos)?
    - Você prefere resolver problemas práticos e ver o resultado rapidamente?
    - Você considera a ética e a responsabilidade digital temas muito importantes?
    - Você gosta de investigar e descobrir como as coisas funcionam para encontrar falhas?

redes_e_infraestrutura (16 pontos) - Planejamento, implementação e gerenciamento da infraestrutura de TI, como servidores e redes de comunicação.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você tem curiosidade sobre como as coisas funcionam "por baixo dos panos" (sistemas complexos)?
    - Você tem interesse em montar e configurar computadores, servidores e redes?
    - Você prefere resolver problemas práticos e ver o resultado rapidamente?
    - Você é uma pessoa organizada e metódica?

desenvolvimento_web (9 pontos) - Criação de sites, aplicações e sistemas que rodam na internet, focando na experiência do usuário.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você prefere resolver problemas práticos e ver o resultado rapidamente?
    - Você gosta de programar e de usar lógica para resolver problemas?

inteligencia_artificial (8 pontos) - Desenvolvimento de sistemas que podem pensar, aprender e tomar decisões como seres humanos.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você gosta de programar e de usar lógica para resolver problemas?
    - Você gosta de investigar e descobrir como as coisas funcionam para encontrar falhas?

ciencia_de_dados (3 pontos) - Análise e interpretação de grandes volumes de dados para extrair conhecimento e insights valiosos.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você gosta de investigar e descobrir como as coisas funcionam para encontrar falhas?

true
*/