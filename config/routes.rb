Rails.application.routes.draw do
  root :to => 'estates#index'
  resources :estates
end
