class Uploads < ActiveRecord::Migration[5.2]
  def change
    drop_table :uploads
  end
end
