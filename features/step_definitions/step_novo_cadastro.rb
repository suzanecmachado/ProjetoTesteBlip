Dado("que o usuário está na tela para completar o seu cadastro") do
    Fluxo.new.acessar_site
end
  
Quando("digitar todos os dados solicitados corretamente") do
    Fluxo.new.inserir_nome(MASSA['Nome'])
    # Alterar email conforme cenario
    Fluxo.new.inserir_email(MASSA['email'])
    Fluxo.new.inserir_senha(MASSA['senha'])
    Fluxo.new.inserir_telefone(MASSA['telefone'])
    Fluxo.new.inserir_site(MASSA['nome_site'])
    Fluxo.new.clicar_btn_empresa
    Fluxo.new.selecionar_empresa
    Fluxo.new.clicar_caixa
    #Fluxo.new.clicar_cadastro
    
end
  
Entao('deve visualizar a mensagem de ativacao de cadastro com sucesso') do
    expect(page).to have_content('Por favor, confira sua caixa de entrada. Verifique também sua caixa de spam ou lixo eletrônico.')
end
  
Quando('digitar todos os dados solicitados esquecendo o site da empresa') do
    Fluxo.new.inserir_nome(MASSA['Nome'])
    Fluxo.new.inserir_email(MASSA['email'])
    Fluxo.new.inserir_senha(MASSA['senha'])
    Fluxo.new.inserir_telefone(MASSA['telefone'])
    Fluxo.new.inserir_site(MASSA['nome_site_0'])
    Fluxo.new.clicar_btn_empresa
    Fluxo.new.selecionar_empresa
end
  
Entao('o botão de cadastro deve permanecer inativo') do 
    #click_on('Cadastre-se grátis', visible: false)
    expect(page).to have_content('Cadastre-se grátis')

end
  
Quando('digitar a senha faltando um dos oito itens obrigatorios') do
    Fluxo.new.inserir_nome(MASSA['Nome'])
    Fluxo.new.inserir_email(MASSA['email'])
    Fluxo.new.inserir_senha(MASSA['senha_incorreta'])
    Fluxo.new.inserir_telefone(MASSA['telefone'])
    Fluxo.new.inserir_site(MASSA['nome_site'])
    Fluxo.new.clicar_btn_empresa
    Fluxo.new.selecionar_empresa
   
end
  
Entao('deve visualizar mensagem de alerta de senha incorreta abaixo do campo') do 
    expect(page).to have_content('A senha deve conter pelo menos 8 itens: um maiúsculo, um minúsculo, um número e um caractere especial.')
end
  

Entao('deve visualizar a mensagem que o email fornecido já possui cadastro') do
    expect(page).to have_content('Este e-mail já está em uso')
    Fluxo.new.opcao_existe_form
end