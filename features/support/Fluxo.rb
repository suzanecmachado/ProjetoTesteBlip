class Fluxo
    include Capybara::DSL

    def acessar_site
        visit('https://account.blip.ai/register?returnUrl=%2Fconnect%2Fauthorize%2Fcallback%3Fclient_id%3Dblip-portal%26redirect_uri%3Dhttps%253A%252F%252Fportal.blip.ai%252Fauthorize%26response_type%3Did_token%2520token%26scope%3Doffline_access%2520openid%2520profile%2520email%2520api-msging-hub.full_access%26state%3Dac7affc61f2f41b583a38097040b3159%26nonce%3Df3982e609ca24569808c458150071868')
    end

    def inserir_nome(texto)
        all(EL['campo_digite_nome'])[0].set(texto)
    end

    def inserir_email(texto)
        all(EL['campo_digite_email'])[0].set(texto)
    end

    def inserir_senha(texto)
        all(EL['campo_digite_senha'])[0].set(texto)
    end

    def inserir_email_login(texto)
        all(EL['campo_digite_email_login'])[0].set(texto)
    end

    def inserir_senha_login(texto)
        all(EL['campo_digite_senha_login'])[0].set(texto)
    end

    def inserir_telefone(texto)
        all(EL['campo_digite_telefone'])[0].set(texto)
    end

    def inserir_site(texto)
        all(EL['campo_digite_site'])[0].set(texto)
    end

    def clicar_caixa
        find("input[id='bds-checkbox-0']", visible: false)
        #el.find(:xpath, EL['btn_caixa'])
        #find(EL['btn_caixa']).click  
    end

    def clicar_robo(opção)
        find(EL['btn_robo']).click   
    end

    def clicar_cadastro(opção)
        find(EL['btn_cad']).click   
    end

    def clicar_btn_empresa
        find(EL['btn_selecionar']).click
    end

    def selecionar_empresa
        find(".blip-select__option[data-value='Band1_4']").select_option
    end

    def clicar_botao
        all(EL['btn_enviar'])[0].click   
    end

    def clicar_senha
        find(EL['senha']).click
    end
    
    def clicar_google
        find(EL['lgn_google']).click
    end

    def opcao_existe_form(opcao)
        assert_selector(EL["option_form"], visible: true)
    end
end