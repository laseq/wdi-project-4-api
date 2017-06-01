class AddSenderIdAndReceiverIdToRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :sender_id, :integer
    add_column :requests, :receiver_id, :integer
  end
end
