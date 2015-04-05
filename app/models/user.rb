class User < ActiveRecord::Base
  has_secure_password

  has_many :sent_messages, class_name: "Message", primary_key: "sender_id"
  has_many :received_messages, class_name: "Message", primary_key: "recipient_id"

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { in: 3..18 }
end
