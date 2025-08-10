Feature: Cadastro de departamentos

    Scenario: Deve permitir cadastrar um novo departamento
        Given o usuário acessa a área de departamentos
        When preenche os dados obrigatórios e confirma
        Then o departamento deve ser adicionado com sucesso

    Scenario: Deve impedir cadastrar departamento com nome duplicado
        Given já existe um departamento com determinado nome
        When o usuário tenta cadastrar outro com o mesmo nome
        Then a aplicação deve exibir uma mensagem de erro de departamento já existente

    Scenario: Deve permitir editar informações de um departamento
        Given um departamento está cadastrado
        When o usuário atualiza os campos de nome e descrição
        Then as alterações devem ser salvas corretamente

    Scenario: Deve permitir excluir um departamento existente
        Given um departamento foi criado
        When o usuário clica no ícone de lixeira referente ao departamento na lista
        Then o departamento deve ser removido da lista
