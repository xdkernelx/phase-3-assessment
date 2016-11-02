Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pets#index'

  resources :pets, only: [:index, :show] do
    resources :toys, only: [:index, :show]
  end

end
