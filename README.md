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

3. Inicie o sistema:
   ```prolog
   ?- iniciar.

---

## Exemplo de Uso

1. Digita o iniciar abaixo e da Ctrl + Enter.
```
?- iniciar.
```
Você gosta de análise e estatística? (s/n)
```
s
```
Você se interessa por desenvolvimento visual? (s/n)
```
n
```
**Recomendação:** Ciência de Dados

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

