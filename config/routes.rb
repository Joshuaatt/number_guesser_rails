Rails.application.routes.draw do
  root :to => "numbers#index"
  resources :numbers
end
