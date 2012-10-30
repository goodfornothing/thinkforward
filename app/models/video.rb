class Video < ActiveRecord::Base

	attr_accessible :vimeo, :tag_ids, :featured
	validates_presence_of :vimeo
	
	has_and_belongs_to_many :tags
	
end
