def login_as(login, password)
  visit '/'
  click_on 'Sign in'
  fill_in 'Email', with: login
  fill_in 'Password', with: password
  click_button 'Sign in'
  save_and_open_page
end