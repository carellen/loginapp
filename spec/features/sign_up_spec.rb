describe "the signup process", type: :feature do

  it "shows registration form " do
    visit root_path
    click_on 'Sign up'
    expect(page).to have_content 'Sign up'
    expect(page).to have_field 'user_firstname'
    expect(page).to have_field 'user_lastname'
    expect(page).to have_field 'user_birthdate_3i'
    expect(page).to have_field 'user_birthdate_2i'
    expect(page).to have_field 'user_birthdate_1i'
    expect(page).to have_field 'user_email'
    expect(page).to have_field 'user_password'
    expect(page).to have_field 'user_password_confirmation'
  end

  it "register new user" do
    visit root_path
    click_on 'Sign up'
    fill_in 'Firstname', with: 'John'
    fill_in 'Lastname', with: 'Doe'
    select_date Date.today - 18.year, from: 'user_birthdate'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'

    click_button 'Sign up'
    expect(page).to have_content 'Profile'
  end
end
