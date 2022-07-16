class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.string :title
      t.text :message
      t.boolean :is_finish
      t.integer :request
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
