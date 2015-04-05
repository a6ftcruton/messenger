class Message < ActiveRecord::Base
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"
  belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"

  # def self.default_scope
  #   where(recipient_id: current_user.id)
  # end
end
