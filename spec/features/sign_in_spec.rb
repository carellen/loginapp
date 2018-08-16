describe "the signin process", type: :feature do
  it "shows main page with login form " do
    visit root_path
    expect(page).to have_content 'Welcome, guest!'
    expect(page).to have_content 'Please, login'
    expect(page).to have_button 'Sign in'
    expect(page).to have_link 'Sign up'
  end
end
