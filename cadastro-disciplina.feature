Feature: Cadastro e edição de disciplinas

    Scenario: Deve permitir cadastrar uma nova disciplina
        Given o usuário está na tela de disciplinas
        When insere os dados válidos e salva
        Then a nova disciplina deve ser listada corretamente

    Scenario: Deve permitir editar uma disciplina existente
        Given uma disciplina já cadastrada
        When o usuário atualiza os dados e salva
        Then as alterações devem ser refletidas na lista

    Scenario: Deve impedir salvar uma disciplina com código duplicado
        Given já existe uma disciplina com determinado código
        When o usuário tenta cadastrar outra com o mesmo código
        Then a aplicação deve exibir uma mensagem de erro
