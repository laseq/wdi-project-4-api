class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
