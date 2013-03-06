Feature: Upload Video
	Scenario: Upload process
		Given I want to upload an video the upload page
		When I enter video values
		And I submit the video form
		Then I should see a success message to the video