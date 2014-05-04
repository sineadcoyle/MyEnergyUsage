require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "factories"))

Given(/^a user with email "([^\"]*)" and password "(.*?)"$/) do |email, password|
  FactoryGirl.create(:user, :email => email, :password => password)
end