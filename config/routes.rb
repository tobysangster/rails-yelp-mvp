Rails.application.routes.draw do
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do 
    resources:reviews, :only => [:new, :edit, :delete, :create]
  end

end
