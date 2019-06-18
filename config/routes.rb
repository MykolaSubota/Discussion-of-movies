Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
	root 'movies#index'
		resources :movies do
		resources :impressions

end
    resources :movies do
      member do
        put "like" => "movies#upvote"
        put "unlike" => "movies#downvote"
      end
    end  
end
	get '*path', to: redirect("/#{I18n.default_locale}/%{path}")
   get '', to: redirect("/#{I18n.default_locale}")
end
