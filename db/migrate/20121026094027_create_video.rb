class CreateVideo < ActiveRecord::Migration
  def up
		create_table :videos do |t|
			t.string :vimeo
			t.timestamps
		end
		
		create_table :tags do |t|
			t.string :title
			t.timestamps
		end
		
		create_table :tags_videos do |t|
			t.integer :tag_id
			t.integer :video_id
		end
		
		create_table :posts do |t|
			t.string :title
			t.text :body
			t.integer :user_id
			t.timestamps
		end
  end

  def down
		drop_table :videos
		drop_table :tags
		drop_table :tags_videos
		drop_table :posts
  end
end
