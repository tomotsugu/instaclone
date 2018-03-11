Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  root "sessions#new"

  resources :pictures do
    collection do
      post :confirm
    end
  end

  resources :users, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :favorites

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
  get '*path', controller: 'application', action: 'render_404'
end
