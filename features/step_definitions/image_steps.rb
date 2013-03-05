Given /^I want to upload an image the upload page$/ do
  visit(new_image_path)
end

When /^I enter values$/ do
  page.should have_content("image")
  fill_in 'image_title', :with => 'prueba'
  #fill_in 'image_image', :with => '/uploads/image/image/4/imgExpo2.png'
  fill_in 'image_description', :with => 'prueba'
end

And /^I submit the form$/ do
  click_button 'Create Image'
end

Then /^I should see a message of success$/ do
  page.should have_content("Image was successfully created")
end
