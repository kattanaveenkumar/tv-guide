Rails.application.routes.draw do
  root to: 'shows#index'
  get 'shows/search'
  post 'shows/add_to_favourites'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
