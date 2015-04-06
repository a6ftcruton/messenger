require 'rails_helper'

describe 'User Login' do

  before do
    visit login_path
  end

  context 'successful' do
    it 'when username and password match existing values' do
      username = "bill"
      password = "securty"
      user = User.create(username: username, password: password)

      visit login_path
      fill_in("Username", with: username)
      fill_in("Password", with: password)
      click_on("Sign In")

      expect(current_path).to eq root_path 
      expect(page).to have_content "Login successful"
    end
  end

end
