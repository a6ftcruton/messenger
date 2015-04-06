class MessagesController < ApplicationController
  before_action :authenticate

  def index
    # @messages = Message.all
    @messages = Message.where(recipient_id: current_user.id)
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Your Message Has Been Sent"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:subject, :body, :sender_id, :recipient_id)
  end
end
