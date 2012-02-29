class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :title
      t.string :orner
      t.text :body

      t.timestamps
    end
  end
end
