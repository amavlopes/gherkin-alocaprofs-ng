Feature: Alocação de professores

    Scenario: Deve permitir alocar um professor a uma disciplina em um período
        Given um professor e uma disciplina estão cadastrados
        When o usuário seleciona ambos e define o período
        Then a alocação deve ser registrada e exibida na lista

    Scenario: Deve impedir alocar o mesmo professor duas vezes na mesma disciplina e período
        Given já existe uma alocação para aquele professor, disciplina e período
        When o usuário tenta duplicar a alocação
        Then o sistema deve exibir uma mensagem de erro

    Scenario: Deve permitir remover uma alocação existente
        Given uma alocação foi criada
        When o usuário seleciona o ícone de lixeira
        Then ela deve ser excluída da 

    Scenario: Deve permitir alterar o professor em uma alocação existente
        Given uma alocação foi feita
        When o usuário edita a alocação e seleciona outro professor
        Then a alocação deve ser atualizada com o novo professor

    Scenario: Deve permitir alterar a disciplina de uma alocação existente
        Given uma alocação foi feita
        When o usuário edita a alocação e troca a disciplina
        Then a alteração deve ser salva corretamente
