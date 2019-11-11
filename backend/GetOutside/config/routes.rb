Rails.application.routes.draw do
  resources :activity_plans
  resources :plans
  resources :users
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
