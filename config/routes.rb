Rails.application.routes.draw do
   get '/' => 'site#home', as: :home
   get '/links' => 'links#index', as: :links
   get '/links/new' => "links#new", as: :new_link
   post '/links' => "links#create"

   get '/links/:id' => 'links#show', as: :link
   get '/:id' => 'links#redirect', as: :redirect
end
