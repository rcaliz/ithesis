Feature: Upload audio
	Scenario: Upload process
		Given I want to upload an audio the upload page
		When I enter audio values
		And I submit the audio form
		Then I should see a success message to the audio