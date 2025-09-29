# Sistema Especializado em Recomendação de Trilha Acadêmica

- **Disciplina:** Programação Lógica e Funcional
- **Instituição:** Pontifícia Universidade Católica do Paraná    
- **Professor:** Frank Coelho de Alcantara  
- **Alunos:**  
  - Ana Carolina Afonso Meiado — [@nacalorias](https://github.com/nacalorias)  
  - Ana Carolina Curi de Sales— [@AnaSaless](https://github.com/AnaSaless)  
  - Pedro Joslin Cavalli — [@pedrocavalli](https://github.com/pedrocavalli)  
  - Victor Augusto Esmaniotto — [@Vitinnn123](https://github.com/Vitinnn123)  

---

## Objetivo
A ideia do projeto é criar um **sistema especialista em Prolog** que funcione como um guia para estudantes de tecnologia. O sistema faz algumas perguntas sobre os interesses e habilidades do usuário e, no final, sugere a trilha acadêmica mais compatível com o perfil dele.  

As trilhas consideradas são:  
- Inteligência Artificial  
- Ciência de Dados  
- Desenvolvimento Web  
- Segurança da Informação  
- Redes e Infraestrutura  

---

## Tecnologias Utilizadas
- **Linguagem:** Prolog
- **Ambiente de execução:** SWI-Prolog ou SWISH
- **Editor utilizado:** SWISH e VS Code

---

## Estrutura do Projeto

```
/Projeto Recomendação de Trilha Acadêmica
├── Projeto Recomendação de Trilha Acadêmica.pl # Base de Conhecimento (trilhas, perfis, perguntas), regras de inferência, cálculo de pontuação e predicados para interação com o usuário.
├── teste_perfil_dados.pl # Aluno com forte inclinação para lógica e dados. (respostas pré-definidas)
├── teste_perfil_web.pl # Aluno com inclinação para criatividade e desenvolvimento prático. (respostas pré-definidas)
├── teste_perfil_seguranca.pl # Aluno com pensamento sistêmico e investigativo. (respostas pré-definidas)
└── README.md # Documentação do projeto
```

---

## Como Executar

1. Abra o **SWI-Prolog** (ou use o [Swish Online](https://swish.swi-prolog.org/)).  
2. Carregue os arquivos:
   ```prolog
   Código Completo Trilha.pl
   
3. Inicie o sistema:
   ```prolog
   ?- iniciar.

## Como executar os arquivos testes
1. Copie e cole no terminal do Swish Online:
    ```prolog
     ?- rodar_teste(1).

---

## Exemplo de Uso

- Digita o iniciar abaixo e da Ctrl + Enter.
```
?- iniciar.
```
1. Você gosta de análise e estatística? (s/n)
```
n
```
2. Gosta de programar com lógica? (s/n)
```
s
```
3. Interessa-se por design visual? (s/n)
```
n
```
4. É criativo para construir do zero? (s/n)
```
n
```
5. Prefere resolver problemas práticos e rápidos? (s/n)
```
s
```
6. Curiosidade sobre como sistemas funcionam? (s/n)
```
s
```
7. Gosta de analisar dados? (s/n)
```
n
```
8. Gosta de investigar e encontrar falhas? (s/n)
```
s
```
9. Considera ética importante? (s/n)
```
s
```
10. Gosta de problemas abstratos? (s/n)
```
n
```
11. Interesse em hardware? (s/n)
```
s
```
12. É organizado? (s/n)
```
s
```
**Resposta Esperada** 

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

---

## Possíveis Melhorias Futuras

* Ampliar a base de conhecimento para incluir mais trilhas acadêmicas e áreas de especialização.
* Permitir que o usuário atribua pesos às respostas, tornando a recomendação mais personalizada.
* Criar uma interface gráfica ou aplicação web para facilitar o uso sem depender do console do Prolog.
* Integrar com banco de dados externo para registrar os perfis dos alunos e acompanhar a evolução das recomendações.
* Adicionar suporte multilíngue (Português/Inglês) para ampliar o alcance do sistema.
* Implementar um modo de simulação para que professores possam testar cenários com diferentes perfis de alunos.

---

## Licença

Este projeto foi desenvolvido **exclusivamente para fins educacionais** na disciplina de *Programação Lógica e Funcional* da Pontifícia Universidade Católica do Paraná.
Não possui finalidade comercial e não concede direitos de uso além do contexto acadêmico.

