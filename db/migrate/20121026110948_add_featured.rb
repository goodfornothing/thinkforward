class AddFeatured < ActiveRecord::Migration
  def up
		add_column :posts, :featured, :boolean, :default => false
		add_column :videos, :featured, :boolean, :default => false
  end

  def down
		remove_column :posts, :featured
		remove_column :videos, :featured
  end
end
