class AddNameAndGenderToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :gender, :integer, null: false, default: 0
    add_column :users, :birthday, :date, null: false
    add_column :users, :is_admin, :boolean, default: false
  end
end
