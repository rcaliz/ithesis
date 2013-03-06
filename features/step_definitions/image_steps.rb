Given /^I want to upload an image the upload page$/ do
  visit(new_image_path)
end

When /^I enter image values$/ do
  page.should have_content("New image")
  fill_in 'image_title', :with => 'prueba'
  fill_in 'image_description', :with => 'prueba'
  file_path = "#{::Rails.root.to_s}/features/image/test.jpg"
  attach_file 'image_image', file_path 
end

And /^I submit the image form$/ do
  click_button 'Create Image'
end

Then /^I should see a success message to the image$/ do
  page.should have_content("successfully created")
end
