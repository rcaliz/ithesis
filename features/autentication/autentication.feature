Feature: Autentication
	Scenario: Login process
		Given I want access the system Ithesis
		When I entry data for_authentication
		And I submit the login form
		Then I should see an options screen

	Scenario: Incorrect login process
		Given I want access the system Ithesis
		When I entry incorrect data authentication
		And I submit the login form
		Then I should see an invalid data message