#Verify the text "Welcome user"
Then(/^I should be on the users welcome page$/) do
    page.should have_content('WELCOME MUDASSIR')
end

#User is in the welcome page
Given(/^I am currently on Cubits welcome page$/) do
	expect(page).to have_content("Thank you for choosing Cubits.")
end

#Click on the dropdown
When(/^I click on the username$/) do
	page.find(:xpath, '//div[@class="hprofile__name"]').click
end

#Click on logout option
When(/^I click on logout option$/) do
	click_link('Logout')
end

#Verify the text "SIGN UP FOR A WALLET"
Then(/^I am logged out$/) do
	expect(page).to have_content("SIGN UP FOR A WALLET")
end

When(/^I login successfully$/) do
	visit 'https://cubits.com/users/sign_in'
	fill_in 'user_email', :with => 'mudassirshaikhji@gmail.com'
	fill_in 'user_password', :with => 'Khajoor123!'
	click_button('Login')
end

When(/^I should see that I am logged in$/) do
	page.should have_content('WELCOME MUDASSIR')
end
