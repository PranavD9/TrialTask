require 'sidekiq/web'

Rails.application.routes.draw do
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users, path: 'auth', path_names: {
  	sign_in: 'login',
  	sign_out: 'logout'
  }
  root to: 'home#index'


  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
