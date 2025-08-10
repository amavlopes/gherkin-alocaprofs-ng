Feature: Cadastro de professores

    Scenario: Deve permitir cadastrar um novo professor com dados válidos
        Given o usuário está na tela de cadastro de professores
        When preenche os dados obrigatórios corretamente
        Then o novo professor deve ser adicionado à lista

    Scenario: Deve impedir o cadastro de professor com campos obrigatórios em branco
        Given o formulário de cadastro está vazio
        When o usuário tenta salvar
        Then a aplicação deve exibir mensagens de erro do tipo campo obrigatório

    Scenario: Deve exibir uma lista com todos os professores cadastrados
        Given existem professores cadastrados no sistema
        When o usuário acessa a tela de professores
        Then a lista deve exibir nome, cpf e departamento ao qual pertence para cada professor

