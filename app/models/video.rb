class Video < ActiveRecord::Base

	attr_accessible :vimeo, :tag_ids, :featured
	validates_presence_of :vimeo
	
	has_and_belongs_to_many :tags

	before_save :assert_featured

	def assert_featured
    if self.featured?
      Video.where('id != ?',self.id).each do |video|
        video.featured = false
        video.save!
      end
    end
  end

end
