Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#show'

  # GET route names from old Wordpress site
  get 'previous-productions', to: 'productions#index'

  # Static Pages
  get :auditions,            to: 'static_pages#auditions', as: :auditions
  get :black_box_directions, to: 'static_pages#black_box_directions', as: :black_box_directions
  get :broken_link,          to: 'static_pages#broken_link', as: :broken_link
  get :community,            to: 'static_pages#community', as: :community
  get :donations,            to: 'static_pages#donations', as: :donations

  resources :members, only: [:index, :show] do
    resources :castings, only: [:index, :show]
  end

  resources :productions, only: [:index, :show]
  resources :venues, only: [:index, :show]

  get '*path', to: 'static_pages#broken_link'
end
