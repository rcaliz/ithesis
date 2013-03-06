Given /^I want to upload an video the upload page$/ do
  visit(new_video_path)
end

When /^I enter video values$/ do
  page.should have_content("New video")
  fill_in 'video_title', :with => 'prueba'
  fill_in 'video_description', :with => 'prueba'
  file_path = "#{::Rails.root.to_s}/features/video/test.3gp"
  attach_file 'video_video', file_path 
end

And /^I submit the video form$/ do
  click_button 'Create Video'
end

Then /^I should see a success message to the video$/ do
  page.should have_content("successfully created")
end