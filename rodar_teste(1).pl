% Teste 1: Perfil voltado para dados/IA
rodar_teste(1) :-
    limpar_respostas,
    assertz(resposta(1, s)),  
    assertz(resposta(2, s)),  
    assertz(resposta(3, n)),
    assertz(resposta(4, n)),
    assertz(resposta(5, n)),
    assertz(resposta(6, n)),
    assertz(resposta(7, s)),  
    assertz(resposta(8, s)), 
    assertz(resposta(9, n)),
    assertz(resposta(10, s)), 
    assertz(resposta(11, n)),
    assertz(resposta(12, n)),
    calcular_e_exibir_recomendacoes.
/*
 Resposta esperada
--- Resultado ---
Com base nas suas respostas, estas são as trilhas mais recomendadas para você:

inteligencia_artificial (17 pontos) - Desenvolvimento de sistemas que podem pensar, aprender e tomar decisões como seres humanos.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você tem afinidade com matemática e estatística?
    - Você gosta de programar e de usar lógica para resolver problemas?
    - Você gosta de pensar em problemas complexos e abstratos?
    - Você gosta de investigar e descobrir como as coisas funcionam para encontrar falhas?

ciencia_de_dados (13 pontos) - Análise e interpretação de grandes volumes de dados para extrair conhecimento e insights valiosos.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você tem afinidade com matemática e estatística?
    - Você se interessa por analisar dados para encontrar padrões e informações escondidas?
    - Você gosta de investigar e descobrir como as coisas funcionam para encontrar falhas?

seguranca_da_informacao (4 pontos) - Proteção de sistemas, redes e dados contra ataques cibernéticos e acessos não autorizados.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você gosta de investigar e descobrir como as coisas funcionam para encontrar falhas?

desenvolvimento_web (4 pontos) - Criação de sites, aplicações e sistemas que rodam na internet, focando na experiência do usuário.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:
    - Você gosta de programar e de usar lógica para resolver problemas?

redes_e_infraestrutura (0 pontos) - Planejamento, implementação e gerenciamento da infraestrutura de TI, como servidores e redes de comunicação.
Justificativa: Esta trilha foi recomendada porque você demonstrou interesse em:

true
*/