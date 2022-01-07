#language: pt
#encode: UTF-8
@cadastro
Funcionalidade: Validar usuário que deseja realizar um novo cadastro
Contexto: 
    Dado que o usuário está na tela para completar o seu cadastro

# para as tags @cadastro_1 e @cadastro_4 não consegui realizar o clique no checkbox

@cadastro_1
Cenario: Completar meu cadastro com sucesso
    Quando digitar todos os dados solicitados corretamente
    Entao deve visualizar a mensagem de ativacao de cadastro com sucesso

@cadastro_2
Cenario: Esquecer de informar algum campo obrigatório
    Quando digitar todos os dados solicitados esquecendo o site da empresa
    Entao o botão de cadastro deve permanecer inativo 

@cadastro_3
Cenario: Senha fora do padrão solicitado
    Quando digitar a senha faltando um dos oito itens obrigatorios 
    Entao deve visualizar mensagem de alerta de senha incorreta abaixo do campo

@cadastro_4
Cenário: Usuário informa email já cadastrado na base
    Quando digitar todos os dados solicitados corretamente
    Entao deve visualizar a mensagem que o email fornecido já possui cadastro 