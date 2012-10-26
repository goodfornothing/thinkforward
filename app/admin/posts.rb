ActiveAdmin.register Post do
  
	menu :priority => 2
	config.batch_actions = false
	
  filter :title
  
	index do
    column("Title") { |post| link_to post.title, admin_post_path(post) }
    column :created_at
    column "" do |post|
      "#{link_to "Edit", edit_admin_post_path(post)} &nbsp; #{link_to "Delete", admin_post_path(post), :method => "delete", :confirm => "Are you sure you wish to delete this post?"}".html_safe
    end
  end
  
  form :html => { :enctype => "multipart/form-data" }  do |f|
    f.inputs "Post" do   
      f.input :title
			f.input :featured, :label => "Featured on homepage"
    end
    f.inputs "Body" do
       f.input :body
    end
    f.buttons
  end
  
  show do |post|
    panel 'Post' do
      attributes_table_for post do
        row :title
        row :body do
     		  simple_format(post.body).html_safe
     	  end
      end
    end
  end

end
