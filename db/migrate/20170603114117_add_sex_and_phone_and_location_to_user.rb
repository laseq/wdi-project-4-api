class AddSexAndPhoneAndLocationToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sex, :string
    add_column :users, :phone, :string
    add_column :users, :location, :string
  end
end
