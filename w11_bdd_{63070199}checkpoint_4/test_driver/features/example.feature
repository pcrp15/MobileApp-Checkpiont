Feature: Fill empty mandatory information
    Scenario: Open App
        Given "scaffold-tag" loaded
        Then  I should see "firstname-tag" appeared
        Then  I should see "lastname-tag" appeared
        Then  I should see "nickname-tag" appeared
        # Then  I should see "age-tag" appeared

    Scenario: Test case1/ all syntom fill
        When I fill the "firstname-tag" field with "yeet"
        And I fill the "lastname-tag" field with "bruh"
        And I fill the "nickname-tag" field with "peach"
        And I tap the "female-tag" element
        And I tap the "syntom-one-tag" element
        And I tap the "syntom-two-tag" element
        And I tap the "syntom-three-tag" element
        And I tap the "syntom-four-tag" element
        Then I tap the "save-button-tag" element
        And I pause for 3 seconds
        And And I should see "report-page-tag" appeared
        And I expect the text "you are covid" to be present
        
    Scenario: Test case2/ all syntom blank
        When I fill the "firstname-tag" field with "yeet"
        And I fill the "lastname-tag" field with "bruh"
        And I fill the "nickname-tag" field with "peach"
        And I tap the "female-tag" element
        And I pause for 3 seconds
        Then I tap the "save-button-tag" element
        And I pause for 3 seconds
        And And I should see "report-page-tag" appeared
        And I expect the text "You are not covid" to be present
    

    Scenario: Test case3/ some detail left blank
        When I fill the "lastname-tag" field with "bruh"
        And I fill the "nickname-tag" field with "peach"
        And I tap the "female-tag" element
        And I tap the "syntom-one-tag" element
        And I tap the "syntom-two-tag" element
        And I pause for 3 seconds
        Then I tap the "save-button-tag" element
        And I pause for 3 seconds
        And And I should see "report-page-tag" appeared

    Scenario: Test case4/ all detail left blank
        When I tap the "syntom-one-tag" element
        And I tap the "syntom-two-tag" element
        And I pause for 2 seconds
        Then I tap the "save-button-tag" element
        And I pause for 2 seconds
        And And I should see "report-page-tag" appeared
        

# # action steps
# When  I fill empty text to "firstname-tag"
# Then  I fill empty text to "lastname-tag"
# Then  I fill empty text to "age-tag"
# Then  I select male
# Then  I select "syntoms-one-tag" and "syntoms-two-tag"
# Then  I tap on "save-button-tag"

