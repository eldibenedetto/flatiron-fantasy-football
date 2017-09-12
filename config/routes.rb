Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'application#welcome', as: 'welcome'
  post '/login', to: 'sessions#login', as: 'login'
  delete '/logout', to: 'sessions#logout', as: 'logout'
  resources :users
  resources :leagues do
    resources :teams do
      resources :transactions
    end
    resources :drafts
  end

  get "/leagues/league_id/drafts/:id/start_draft", to: 'drafts#start_draft', as: 'start_draft'
end
