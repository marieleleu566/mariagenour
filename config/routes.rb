Rails.application.routes.draw do

  scope "(:locale)", locale: /en|fr/ do
    root to: 'pages#home'
    get 'events', to: 'pages#events'
    get 'infospratique', to: 'pages#infospratique'
    get 'lejourj', to: 'pages#lejourj'
    get 'listemariage', to: 'pages#listemariage'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :contacts, only: [:new, :create], :path => 'rsvp'
  end
end
