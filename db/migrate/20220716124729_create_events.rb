class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :address
      t.boolean :is_finish
      t.integer :request
      t.references :participant, foreign_key: { to_table: :users }, null: true

      t.timestamps
    end
  end
end
