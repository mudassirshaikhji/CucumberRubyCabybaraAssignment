Feature: Cubits Login and logout
#As a cubits user
#I want to login to cubits
#So that I can access my account	


Scenario: login with valid credentials 
When I login successfully
Then I should see that I am logged in

#Feature: Cubits log out
Scenario: logging out 
Given I am currently on Cubits welcome page
When I click on the username
And I click on logout option
Then I am logged out