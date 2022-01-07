Dado('que o usuário está na tela de login') do
    visit('https://account.blip.ai/login')
end
  
Quando('digitar email e senha cadastrados') do
    Fluxo.new.inserir_email_login(MASSA['email_2'])
    Fluxo.new.inserir_senha_login(MASSA['senha_2'])
    Fluxo.new.clicar_botao
end

Entao('deve visualizar meu perfil') do
    expect(page).to have_content('Meu perfil')
end

Quando('digitar email cadastrado') do
    Fluxo.new.inserir_email_login(MASSA['email_2'])
end

Quando('clicar em esqueceu a senha') do 
    Fluxo.new.clicar_senha 
end
  
Entao('deve visualizar a mensagem com instrucoes de redefinir senha com campo de email') do
    expect(page).to have_content('Informe seu email cadastrado no BLiP e enviaremos um link para você criar uma nova senha!')
    assert_selector(EL['campo_digite_email'], visible: true)
end

Quando('digitar login sendo a senha incorreta') do
    Fluxo.new.inserir_email_login(MASSA['email_2'])
    Fluxo.new.inserir_senha_login(MASSA['senha'])
    Fluxo.new.clicar_botao
end

Entao('deve visualizar a mensagem de erro') do
    expect(page).to have_content('Login e/ou senha inválidos')
end

Quando('selecionar a opcao de login pelo google') do
   Fluxo.new.clicar_google
end
  
Entao('deve ser direcionado a pagina para realizar login pelo google') do
    sleep(3)
    expect(page).to have_content('Fazer login com o Google')
end