class AddSlugToPost < ActiveRecord::Migration
  def change
		add_column :posts, :slug, :string
  end
end
