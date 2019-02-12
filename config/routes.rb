Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
     namespace :v1 do
       resources :users, only: [:index, :update]
       resources :clothes, only: [:index, :update]
       resources :outfits
       resources :outfit_clothes, only: [:index, :update]
       resources :categories, only: [:index, :update]
       resources :occasions, only: [:index, :update]
       resources :user_clothes, only: [:index, :update]
       resources :colors, only: [:index, :update]

       # get '/hats', to: 'categories#hats'
     end
   end
end
