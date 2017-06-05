class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.text :description
      t.string :dress_code
      t.string :status
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
