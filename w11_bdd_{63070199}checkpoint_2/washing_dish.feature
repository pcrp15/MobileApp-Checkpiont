Feature: Wash dish

    Background: 
        Given a washer name 'Sam'
        Given a washer name 'Sung'


    Scenario: Sum is washing the dish
        Given the dish has already been used and now dirty
        And there are 15 dish in the sink
        When Sum washs the dish
        And Sum rinse the dish
        And Sum put it on the dish rack
        Then there are 15 clean dish on the dish rack
        And the sink should be clean

    Scenario: Sung is washing the dish
        Given the dish has already been used and now dirty
        And there are 15 dish in the sink
        When Sung washs the dish
        And Sung break the dish
        And Sung put it on the dishrack
        Then there are 10 clean dish on the dish rack
        And the 5 broken dish in the sink
