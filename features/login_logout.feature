# language: pt
# encoding: utf-8

Funcionalidade: Login e Logout
  Como usuário
  Para ver minha conta
  Eu quero conseguir realizar login e logout

  Contexto:
    Dado que o usuário esteja no site da Youse

  Cenário: Login com sucesso
    E que o usuário tenha uma conta
    Quando ele realiza login
    Então ele vê a página inicial com seus dados

  Cenário: Logout com sucesso
    E que o usuário esteja logado
    Quando ele clicar em sair
    Então ele vê a página inicial da Youse
