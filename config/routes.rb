Rails.application.routes.draw do
  get 'customers/index'

  get 'dockets/index'

  devise_for :owners
  root to: 'shops#index'

  resources :owners do
  	resources :shops
	 	resources :customers
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
