class ColophonController < ApplicationController
	
	before_filter :authenticate
	
	
	def home
		
		@introduction_video = Tag.where(:title => 'Introduction').first.videos.first
		@inspiration_video = Tag.where(:title => 'Inspiration').first.videos.first
		@challenge_video = Tag.where(:title => 'Challenge').first.videos.first
		
		@post = Post.feature.first
		
	end
	
	 protected

	  def authenticate
	    authenticate_or_request_with_http_basic do |username, password|
	      password == "th1nkf0rward"
	    end
	  end
	
end
