class AddImageToGroup < ActiveRecord::Migration[5.1]
  def change
    add_column :groups, :image, :text
    add_column :groups, :banner, :text
  end
end
