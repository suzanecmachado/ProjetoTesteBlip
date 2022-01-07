#language: pt
#encode: UTF-8

@login
Funcionalidade: Validar usuário que possui cadastro acesse página de login
Contexto:
    Dado que o usuário está na tela de login

@login_1
#inserir no arquivo de massa email e senha cadastrados na base
Cenario: Login com sucesso
    Quando digitar email e senha cadastrados
    Entao deve visualizar meu perfil 

@login_2
Cenario: Esqueceu a senha
    Quando digitar email cadastrado
    E clicar em esqueceu a senha
    Entao deve visualizar a mensagem com instrucoes de redefinir senha com campo de email

@login_3
Cenario: Login invalido - senha incorreta
    Quando digitar login sendo a senha incorreta
    Entao deve visualizar a mensagem de erro

@login_4
Cenario: Login com o google
    Quando selecionar a opcao de login pelo google
    Entao deve ser direcionado a pagina para realizar login pelo google