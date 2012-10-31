class ColophonController < ApplicationController
	
	before_filter :authenticate
	
	def home
		
		@introduction_video = Tag.where(:title => 'Introduction').order(:created_at).first.videos.first
		@inspiration_video = Tag.where(:title => 'Inspiration').order(:created_at).first.videos.first
		@challenge_video = Tag.where(:title => 'Challenge').order(:created_at).first.videos.first
		
		@post = Post.feature.first
		
	end
	
	def story
		@stories = (Post.all + Video.all).sort_by(&:created_at).reverse
	end
	
	 protected

	  def authenticate
			if Rails.env.production?
	    	authenticate_or_request_with_http_basic do |username, password|
		      password == "eypurpose"
		    end
			else
				true
			end
	  end
	
end
