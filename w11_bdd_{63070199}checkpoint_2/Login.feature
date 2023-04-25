Feature: Login

    Background: 
        Given a usercase1 is 'Start_user'
        And a usercase2 is 'Lock_user'
        And a usercase3 is 'Fault_user'
        And a usercase4 is 'Low_performance__user'
        And all user password is 'block_code'
        And a usercase5 is 'blank'
        And a usercase6 is 'wrong'

    Scenario: No username
        Given I put a username as blank
        And I put a password as block_code
        Then I should see 'Must have a username'

    Scenario: No password
        Given I put a username as Start_user, Locked_user, Fault_user,Low_performance__user
        And I put a password as blank
        Then I should see 'Password is required'

    Scenario: Wrong username or password
        Given I put a username or password as wrong
        Then I should see 'The username and password do not match the existing user'

    Scenario: Start_user login
        Given I put a username as standard_user
        And I put a password as block_code
        Then I should pass the login process
        And I should see the product page

    Scenario: Locked_user login
        Given I put a username as locked_out_user
        And I put a password as block_code
        Then I should see 'Sorry, this user has been locked.'

    Scenario: Fault_user login
        Given I put a username as Fault_user
        And I put a password as block_code
        Then I should pass the login process
        And I should see the product page
       But I can't see all the products

    Scenario: Low_performance__user login
        Given I put a username as Low_performance__user
        And I put a passowrd as block_code
        Then I should pass the login process
        And I should see the product page
        But the performance is really slow
