class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |t|
      t.references :tag, index: true
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :post_tags, :tags
    add_foreign_key :post_tags, :posts
  end
end
