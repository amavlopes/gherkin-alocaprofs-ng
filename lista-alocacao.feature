Feature: Visualização por período letivo

    Scenario: Deve exibir todas as alocações de um determinado período
        Given alocações foram realizadas em períodos diferentes
        When o usuário seleciona um período específico
        Then apenas as alocações daquele período devem ser exibidas

    Scenario: Deve exibir uma mensagem quando não há alocações para o período selecionado
        Given nenhum professor foi alocado no período escolhido
        When o usuário seleciona o período
        Then uma mensagem informando "Sem alocações" deve ser exibida
