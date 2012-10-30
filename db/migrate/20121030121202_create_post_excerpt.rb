class CreatePostExcerpt < ActiveRecord::Migration
  def up
		add_column :posts, :excerpt, :string
  end

  def down
		remove_column :posts, :excerpt
  end
end
