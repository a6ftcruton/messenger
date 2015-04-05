class AddRecipientToMessages < ActiveRecord::Migration
  def change
    remove_column :messages, :to, :string
    remove_column :messages, :user_id, :integer 
    add_column :messages, :recipient_id, :integer
    add_column :messages, :sender_id, :integer
  end
end
