class SessionController < ApplicationController
  def new
  end

  def create
    user = User.where(email: params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Login successful"
    else
      flash.now[:notice] = "Check your username and password. No user on file with the credentials you supplied."
      render :new
    end
  end
end
