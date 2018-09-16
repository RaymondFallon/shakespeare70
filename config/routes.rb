Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#show'

  get :donations, to: 'static_pages#donations', as: :donations
  get :community, to: 'static_pages#community', as: :community

  resources :members do
    resources :castings
  end

  resources :productions
  resources :venues
end
