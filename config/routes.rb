Rails.application.routes.draw do
    get 'auth/:provider/callback', to: 'sessions#create'
    get 'auth/failure', to: redirect('/')
    get 'signout', to: 'sessions#destroy', as: 'signout'
    get 'users/:id', to: 'users#show'
    get 'activate_page', to: 'application#activate_page'
    post 'users/:id/add_crush', to: 'users#add_crush'

    resources :sessions, only: [:create, :destroy]

    root to: "home#show"
end
