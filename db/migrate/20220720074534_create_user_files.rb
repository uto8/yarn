class CreateUserFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_files do |t|
      t.string :file
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
