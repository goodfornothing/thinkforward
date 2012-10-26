ActiveAdmin.register Tag do
	
	menu :priority => 4
	config.batch_actions = false
	
	filter :title
	
	index do
    column :title
    column :created_at
    default_actions
  end

end