class CreateLicenseApprovals < ActiveRecord::Migration[6.1]
  def change
    create_table :license_approvals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
