EvolveYourself::Application.routes.draw do
  
	ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

	match "story" => "colophon#story"
  root :to => 'colophon#home'

end
