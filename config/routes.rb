Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#show'

  get :black_box_directions, to: 'static_pages#black_box_directions', as: :black_box_directions
  get :community, to: 'static_pages#community', as: :community
  get :donations, to: 'static_pages#donations', as: :donations

  resources :members do
    resources :castings
  end

  resources :productions
  resources :venues
end
