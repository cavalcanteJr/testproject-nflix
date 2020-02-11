#language: pt

Funcionalidade: Login
    Para que eu posso gerenciar os filmes do catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha
    @login_ok
    Cenario: Acesso
        Quando eu faço o login com "tony@stark.com" e "123456"
        Então devo ser autenticado
        E devo ver "Tony Stark" na área logada
    @login_invalid
    Esquema do Cenario: Login invalid
        Quando eu faço o login com <email> e <password>
        Então não devo ser autenticado
        E devo ver a mensagem de alerta <mensagem>

        Exemplos:
            |email              |password   |mensagem                       |
            |"tony@stark.com"   |"123"      |"Usuário e/ou senha inválidos" |
            |"404@stark.com"    |"123456"   |"Usuário e/ou senha inválidos" |
            |""                 |"123"      |"Opps. Cadê o email?"          |
            |"tony@stark.com"   |""         |"Opps. Cadê a senha?"          |