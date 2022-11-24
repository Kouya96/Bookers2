class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :post_image_id, :string
  end
end

