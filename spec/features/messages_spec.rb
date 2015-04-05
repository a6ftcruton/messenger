require 'rails_helper'

describe "Message" do

  before do
    authenticate_and_login_user
  end

  context "created by a user" do
    
    it 'sends message and redirects user' do
      visit new_message_path
      sender   = User.create(username: "Bob", password: "passwrds") 
      receiver = User.create(username: "Bill", password: "p4ss")

      fill_in("To:", with: "Bill"  )
      fill_in("Subject:", with: "Hello" )
      fill_in("Message:", with: "How are you today?" )
      click_on("Send Message")

      expect(current_path).to eq root_path
      expect(page).to have_content "Your Message Has Been Sent"
    end

  end

end
