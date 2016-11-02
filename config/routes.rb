Rails.application.routes.draw do
  root :to => "home#index"
  devise_for :trainers
  resources :trainers
  resource :pokemon

  patch '/capture', to: 'pokemons#capture'
  patch '/damage', to: 'pokemons#damage'
  post 'create', to: 'pokemons#create'
  get 'new', to: 'pokemon#new', as: 'new'
end
