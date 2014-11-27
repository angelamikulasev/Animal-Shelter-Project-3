module Features
  module SessionHelpers    
    def log_in(options = {})
      firstname = options.fetch :firstname, 'annie'
      lastname = options.fetch :lastname, 'mik'
      email = options.fetch :email, 'annie@annie.com'
      password = options.fetch :password, 'chicken'

      user = User.create! :firstname => firstname, 
          :lastname => lastname, 
          :email => email, 
          :password => password

      visit new_session_path
      fill_in 'session[email]', with: user.email
      fill_in 'session[password]', with: user.password
      click_button 'Login'
    end
  end
end