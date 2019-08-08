Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  authenticated do
    resources :secret_codes
  	devise_scope :user do
		  root to: "devise/registrations#edit"
		end

		post 'secret_codes/create_multiple', to: 'secret_codes#create_multiple', as: :create_multiple_secret_code
  end

  devise_for :users
  unauthenticated do
		devise_scope :user do
		  root to: "devise/sessions#new"
		end
  end
  # root to: "projects#index"
end
