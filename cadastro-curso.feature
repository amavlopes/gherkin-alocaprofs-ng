Feature: Cadastro de cursos

    Scenario: Deve permitir cadastrar um novo curso com dados válidos
        Given o usuário está na tela de cursos
        When informa nome e descrição
        Then o curso deve ser adicionado à lista

    Scenario: Deve impedir cadastro de curso com nome já existente
        Given já existe um curso com o mesmo nome
        When o usuário tenta cadastrar outro com o mesmo nome
        Then a aplicação deve exibir uma mensagem de erro de curso já existente

    Scenario: Deve permitir editar os dados de um curso
        Given um curso está cadastrado
        When o usuário altera o nome ou descrição do curso
        Then o curso deve ser atualizado corretamente

    Scenario: Deve permitir excluir um curso
        Given um curso foi cadastrado
        When o usuário seleciona o ícone lixeira referente a um item da lista de cursos
        Then o curso deve ser removido da lista
