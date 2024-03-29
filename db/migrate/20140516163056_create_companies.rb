class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :url
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
