#Given /^I want access the system Ithesis$/ do
#  visit(login_path)
#end

#When /^I entry data for_authentication$/ do
#  page.should have_content("Remember me")
#  fill_in 'username', :with => 'carlos'
#  fill_in 'password', :with => '123456'
#end

#And /^I submit the login form$/ do
#  click_button 'Log in'
#end

#Then /^I should see an options screen$/ do
#  page.should have_content("Options for Student")
#end


Given /^I want access the system Ithesis$/ do
  visit(login_path)
end

When /^I entry incorrect data authentication$/ do
  page.should have_content("Remember me")
  fill_in 'username', :with => 'carlos'
  fill_in 'password', :with => '123456'
end

And /^I submit the login form$/ do
  click_button 'Log in'
end

Then /^I should see an invalid data message$/ do
  page.should have_content("Email or password was invalid")
end