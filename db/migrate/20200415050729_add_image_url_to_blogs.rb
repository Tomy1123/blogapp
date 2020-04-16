class AddImageUrlToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :image_url, :string
  end
end
