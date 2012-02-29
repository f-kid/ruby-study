class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :c_title
      t.string :c_orner
      t.text :c_body
      t.integer :theme_id

      t.timestamps
    end
  end
end
