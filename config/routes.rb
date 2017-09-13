Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'application#welcome', as: 'welcome'
  post '/login', to: 'sessions#login', as: 'login'
  delete '/logout', to: 'sessions#logout', as: 'logout'
  resources :users
  resources :leagues do
    resources :teams do
      get '/position_select', to: 'players#position_select', as: 'position_select'
      post '/', to: 'players#position_submit'
      resources :transactions
    end
    resources :drafts
  end

  get "/leagues/league_id/drafts/:id/start_draft", to: 'drafts#start_draft', as: 'start_draft'
  get "/leagues/league_id/drafts/:id/end_draft", to: 'drafts#end_draft', as: 'end_draft'
end
