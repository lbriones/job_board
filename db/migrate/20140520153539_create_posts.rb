class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.references :company, index: true

      t.timestamps
    end
  end
end
