class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :user_name
      t.integer :user_id

      t.timestamps
    end
  end
end
