require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Given(/^I am on the home page$/) do
  visit path_to("the home page")
end

Given(/^I am on ([^\"]*)$/) do |page_name|
  visit path_to(page_name)
end

Given(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

And(/^I fill in the "([^\"]*)" field with "(.*?)"$/) do |field, value|
  fill_in(field.gsub(' ', '_'), :with => value)
end

Then(/^I press "(.*?)"$/) do |button|
  click_button(button)
end

Then /^I should see "([^\"]*)"$/ do |text|
  assert page.has_content?(text)
  # page.should have_content(text)
end

And /^I take a screenshot$/ do
  page.driver.render('screenshot.png')
end