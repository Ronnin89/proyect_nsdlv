Rails.application.routes.draw do
  devise_for :users
  resources :profiles
  resources :parents
  resources :children
  resources :educators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'dashboards#index'
  get 'dashboard/nines', to: 'dashboards#child'
  get 'dashboard/educadoras', to: 'dashboards#educator'
  root 'home#index'
end
