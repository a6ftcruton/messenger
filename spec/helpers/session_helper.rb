module SessionHelper
  def authenticate_and_login_user(username)
    user = FactoryGirl.create(:user, id: 100, username: username, password: "passpass")
    visit login_path
    fill_in("Username", with: user.username)
    fill_in("Password", with: user.password)
    click_on("Sign In")
  end

  def destroy_session
    session[:user_id] = nil
    redirect_to root_path
  end
end
