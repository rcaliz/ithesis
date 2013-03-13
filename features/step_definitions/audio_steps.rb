<<<<<<< HEAD
Given /^I want to upload an audio the upload page$/ do
  visit(new_audio_path)
end

When /^I enter audio values$/ do
  page.should have_content("New audio")
  fill_in 'audio_title', :with => 'prueba'
  fill_in 'audio_description', :with => 'prueba'
  file_path = "#{::Rails.root.to_s}/features/audio/carlos_vives.mp3"
  attach_file 'audio_audio', file_path 

end

And /^I submit the audio form$/ do
  click_button 'Create Audio'
end

Then /^I should see a success message to the audio$/ do
  page.should have_content("successfully created")
end
=======
Given /^I want to upload an audio the upload page$/ do
  visit(new_audio_path)
end

When /^I enter audio values$/ do
  page.should have_content("New audio")
  fill_in 'audio_title', :with => 'prueba'
  fill_in 'audio_description', :with => 'prueba'
  file_path = "#{::Rails.root.to_s}/features/audio/carlos_vives.mp3"
  attach_file 'audio_audio', file_path 

end

And /^I submit the audio form$/ do
  click_button 'Create Audio'
end

Then /^I should see a success message to the audio$/ do
  page.should have_content("successfully created")
end
>>>>>>> 290743db3260ec73582e93a4103180d6a57d7a36
