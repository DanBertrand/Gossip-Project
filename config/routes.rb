Rails.application.routes.draw do
    get '/', to: 'static_pages#index'
    get '/home', to: 'static_pages#home'
    get '/team', to: 'static_pages#team'
    get '/contact', to: 'static_pages#contact'
    get '/welcome/:name', to: 'static_pages#welcome'
    get '/gossip/:number', to: 'static_pages#gossip'
end
