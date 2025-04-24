class RemoveContentFromPosts < ActiveRecord::Migration[7.2]
  def change
    remove_column :posts, :content, :text
  end
end
