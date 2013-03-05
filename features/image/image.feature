Feature: Upload Image
	Scenario: Upload process
		Given I want to upload an image the upload page
		When I enter values
		And I submit the form
		Then I should see a message of success