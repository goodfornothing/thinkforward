class Post < ActiveRecord::Base

	scope :feature, where(:featured => true)
 
	attr_accessible :title, :body, :featured, :excerpt, :vimeo, :slug
	validates_presence_of :title, :body, :excerpt
		
	extend FriendlyId
  friendly_id :title, use: :slugged

	belongs_to :user
	before_save :assert_featured

	def assert_featured
    if self.featured?
      Post.where('id != ?',self.id).each do |post|
        post.featured = false
        post.save!
      end
    end
  end
      
end
