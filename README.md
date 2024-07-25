# 📚 Sistema de Gerenciamento de Biblioteca

## 🚩 Problemática
A **Biblioteca Central da Universidade** tem enfrentado diversos desafios com seu sistema de gerenciamento. O atual sistema não suporta eficientemente o gerenciamento de livros, empréstimos, reservas, devoluções e o acompanhamento detalhado dos usuários e suas interações com a biblioteca. Para superar esses desafios, a biblioteca decidiu adotar um novo sistema de gerenciamento de biblioteca baseado em banco de dados relacional.

## 📝 Requisitos do Sistema

###  👥 Usuários
- A biblioteca serve a três tipos principais de usuários: **Alunos, Professores e Funcionários**.
- Cada usuário deve ter:
  - **ID único**
  - **Nome**
  - **Endereço**
  - **Telefone**
  - **Tipo de usuário**: Aluno, Professor ou Funcionário

###  📚 Livros
- Cada livro deve ter:
  - **ID único**
  - **Título**
  - **Autores**
  - **Edição**
  - **Ano de publicação**
  - **ISBN**
  - **Contagem de cópias disponíveis**
- Livros podem estar:
  - Disponíveis
  - Emprestados
  - Reservados

###  🔄 Empréstimos
- Quando um livro é emprestado, o sistema deve registrar:
  - **ID do usuário**
  - **ID do livro**
  - **Data do empréstimo**
  - **Data prevista de retorno**
- Prazos de empréstimo:
  - **Alunos**: 15 dias
  - **Professores**: 30 dias
  - **Funcionários**: 20 dias

###  🗓️ Reservas
- Usuários podem reservar livros que estão emprestados.
- Uma reserva deve registrar:
  - **ID do usuário**
  - **ID do livro**
- Quando o livro reservado é devolvido, o usuário com a reserva mais antiga tem prioridade de empréstimo.

###  📅 Devoluções e Multas
- Ao devolver um livro, o sistema deve verificar se o livro está sendo devolvido após a data prevista de retorno.
- Se houver atraso, uma multa deve ser calculada com base no número de dias de atraso.
- Multa: **R$1,00 por dia de atraso** para todos os tipos de usuários.
