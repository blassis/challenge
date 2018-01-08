# language: pt
# encoding: uft-8

Funcionalidade: Cotar Seguro Auto
  Como novo usuário
  Para contratar um Seguro Auto
  Eu quero conseguir gerar uma apólice

  Contexto:
    Dado que o usuário esteja no site da Youse

  Cenário: Gerar apólice Auto
    Quando o usuário finalizar o fluxo de cotação Auto
    Então ele consegue ver sua apólice
