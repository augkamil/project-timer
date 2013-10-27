ProjectTimer::Application.routes.draw do
  
  devise_for :users
  root 'main#index'

  resources :users
  resources :timesheet_elements
  resources :projects
end
