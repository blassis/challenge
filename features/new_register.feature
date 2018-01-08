# language: pt
# encoding: utf-8

Funcionalidade: Novo Cadastro
  Como novo usuário
  Para contratar um seguro
  Eu quero conseguir me cadastrar no site da Youse

  Contexto:
    Dado que o usuário esteja no site da Youse

  Cenário: Cadastro com sucesso
    Quando realizar um cadastro
    Então será redirecionado para a área logada
