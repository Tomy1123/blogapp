class AddSpotToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :spot, :integer
  end
end
