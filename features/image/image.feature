<<<<<<< HEAD
Feature: Upload Image
	Scenario: Upload process
		Given I want to upload an image the upload page
		When I enter image values
		And I submit the image form
		Then I should see a success message to the image

	Scenario: Upload process whit error
		Given I want again to upload an image
		When the image format is not_jpg_or png
		And I submit again the image form
=======
Feature: Upload Image
	Scenario: Upload process
		Given I want to upload an image the upload page
		When I enter image values
		And I submit the image form
		Then I should see a success message to the image

	Scenario: Upload process
		Given I want again to upload an image the upload page
		When the image format is not_jpg_or png
		And I submit again the image form
>>>>>>> 290743db3260ec73582e93a4103180d6a57d7a36
		Then I should see a message showing the accepted image formats