describe "the signup process", type: :feature do

  it "shows registration form " do
    visit root_path
    click_on 'Sign up'
    expect(page).to have_content 'Sign up'
    expect(page).to have_field 'user_firstname'
    expect(page).to have_field 'user_lastname'
    expect(page).to have_field 'user_birthdate'
    expect(page).to have_field 'user_email'
    expect(page).to have_field 'user_password'
    expect(page).to have_field 'user_password_confirmation'
  end

end
