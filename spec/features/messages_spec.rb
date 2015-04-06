require 'rails_helper'

describe "Message" do

  context "created by a user" do

    it 'sends message and redirects user' do
      authenticate_and_login_user("Charles")
      receiver = create(:user, username: "Frans")
      visit new_message_path

      select("Frans", :from => "To:"  )
      fill_in("Subject:", with: "Hello" )
      fill_in("Message:", with: "How are you today?" )
      click_on("Send Message")

      expect(current_path).to eq root_path
      expect(page).to have_content "Your Message Has Been Sent"
    end

  end

  context "viewed by a user" do

    it 'views all its messages' do
      authenticate_and_login_user("Charlie") 
      user    = User.where(username: "Charlie", id: 100)
      message = create(:message, subject: "New Message", sender_id: 100, recipient_id: 100)

      visit messages_path

      expect(page).to have_content "New Message"
    end
  end

end
