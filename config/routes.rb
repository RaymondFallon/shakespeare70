Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope ENV['RAILS_RELATIVE_URL_ROOT'] do
    root to: 'welcome#show'
  end
end
