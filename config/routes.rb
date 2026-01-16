VaxGame::Application.routes.draw do
  # resources :scores, only: [:new, :create]

  root to: 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/tour', to: 'static_pages#tour'
  get '/faq', to: 'static_pages#faq'
  get '/herdImmunity', to: 'static_pages#herdImmunity'
  # get '/scenario', to: 'static_pages#scenarioSelect'
  # get '/scenarioGame', to: 'static_pages#scenarioGame'
  # get '/scores', to: 'scores#new'

  get '/game', to: 'static_pages#game'

end
