ActiveAdmin.register Video do
	
	menu :priority => 3
	config.batch_actions = false
	
	filter :title
	
	index do
    column :vimeo
    column :created_at
    default_actions
  end
	
	form do |f|              
    f.inputs "Video" do   
      f.input :vimeo, :label => "Vimeo ID"                  
      f.input :tags, :as => :check_boxes
    end                               
    f.buttons                         
  end
	
end