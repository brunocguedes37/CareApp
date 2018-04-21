Rails.application.routes.draw do

  devise_for :users
  get 'observations/index'
  get 'observations/show'
  get 'observations/new'
  get 'observations/edit'
resources :doctors
resources :hospitals
resources :patients do
resources :observations

end 
root 'welcome#index'
end
