require 'rails_helper'

describe 'user signup' do

  before do
    visit signup_path
  end

  context 'with valid credentials' do

    it 'logs in and redirects user' do
      fill_in("Username", with: "demo_user")
      fill_in("Password", with: "password1")
      fill_in("Password confirmation", with: "password1")
      click_on("Create Account")

      expect(current_path).to eq root_path
      expect(page).to have_content "Account created successfully"
    end

  end

  context 'with invalid credentials' do

    it 're-renders signup form if username is not unique' do
      username = "abcd"  
      user = User.create(username: username, password: "password1")
      expect(user).to be_valid

      fill_in("Username", with: username)
      fill_in("Password", with: "password2")
      fill_in("Password confirmation", with: "password2")
      click_on("Create Account")

      expect(current_path).to eq users_path
      expect(page).to have_content "Username has already been taken"
    end

    it 're-renders sign-up form if username is less than 3 or more than 18 chars' do
      fill_in("Username", with: "jo")
      fill_in("Password", with: "password")
      fill_in("Password confirmation", with: "password")
      click_on("Create Account")

      expect(current_path).to eq users_path
      expect(page).to have_content "Username is too short"
    end

  end
end
