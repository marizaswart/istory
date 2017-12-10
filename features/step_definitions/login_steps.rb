Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Then("I am on the login page") do
  visit new_user_session_path
end

When("I click {string} button") do |element|
  click_link_or_button element
end

Given("I am logged in as random user") do
  user = User.last
  login_as(user, scope: :user)
end

When("I click {string} link") do |element|
  click_link element
end



