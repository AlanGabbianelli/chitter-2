feature 'User Log In' do
  feature 'Registered user' do
    scenario 'can enter the website - cannot see Sign up / Log in buttons' do
      user_sign_up
      click_button('Log out')
      user_log_in(username: 'Deadpool', password: 'ihatewolverine92')
      expect(page).to have_content('Welcome Deadpool! Chit away!')
      visit '/'
      expect(page).not_to have_button('Sign up')
      expect(page).not_to have_button('Log in')
    end
  end

  feature 'Not registered user' do
    scenario 'cannot enter the website - can see Sign up / Log in buttons' do
      user_log_in(username: 'Magneto', password: 'ihateXavier46')
      expect(page).not_to have_content('Welcome Magneto! Chit away!')
      expect(page).to have_content('Incorrect username or password.
        Check your details or please sign up.')
        expect(page).to have_button('Sign up')
        expect(page).to have_button('Log in')
    end
  end
end
