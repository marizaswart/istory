Given("I am on the sign up page") do
  visit '/users/sign_up'
end

When("I enter {string} as {string}") do |field, value|
  fill_in field, with: value
end

When("I click {string}") do |element|
  click_link_or_button element
end

Then("I should be on the landing page") do
  expect(current_path).to eq '/'
end

Then("I should see an error message {string}") do |text|
  expect(page).to have_content  text
end