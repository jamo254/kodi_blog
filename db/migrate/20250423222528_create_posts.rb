class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.boolean :published
      t.datetime :published_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :posts, :published
  end
end
