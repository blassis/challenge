# language: pt
# encoding: utf-8

Funcionalidade: Acessar páginas institucionais
  Como usuário
  Para contratar um seguro
  Eu quero acessar as páginas institucionais de cada produto

  Contexto:
    Dado que o usuário esteja no site da Youse

  Cenário: Acessar a página Sobre a Youse
    Quando ele clicar no menu Sobre a Youse
    Então ele consegue visualizar a página correspondente

  Cenário: Acessar a página de Seguro Auto
    Quando ele clicar no menu de Seguro Auto
    Então ele consegue visualizar a página correspondente à Auto

  Cenário: Acessar a página de Seguro Home
    Quando ele clicar no menu de Seguro Home
    Então ele consegue visualizar a página correspondente à Home

  Cenário: Acessar a página de Seguro Life
    Quando ele clicar no menu de Seguro Life
    Então ele consegue visualizar a página correspondente à Life
