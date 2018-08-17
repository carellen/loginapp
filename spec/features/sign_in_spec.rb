describe "the signin process", type: :feature do
  let!(:user) { create(:user) }
  it "shows main page with login form " do
    visit root_path
    expect(page).to have_content 'Welcome, guest!'
    expect(page).to have_content 'Please, login'
    expect(page).to have_button 'Sign in'
    expect(page).to have_link 'Sign up'
  end

  it "signs user in" do
    visit root_path

    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'

    click_button 'Sign in'
    expect(page).to have_content 'Profile'
  end

  it "reject sign in for unregistered user" do
    visit root_path

    fill_in 'Email', with: 'fake@example.com'
    fill_in 'Password', with: 'fakepassword'

    click_button 'Sign in'
    expect(page).to have_current_path(root_path)
  end
end
