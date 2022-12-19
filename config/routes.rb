Rails.application.routes.draw do
  devise_for :shop,controllers: {
  registrations: "shop/registrations",
  sessions: 'shop/sessions',
  passwords: 'shop/passwords'
}
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
  devise_for :customer,controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions',
  passwords: 'public/passwords'
}
 resources :maps
  scope module: :public do
    root "homes#top"
    get '/' => "homes#top"
    get '/about' => "homes#about"
    get '/customers/mypage' => "customers#show"
    get '/customers/mypage/edit' => "customers#edit"  
    patch  '/customers/mypage' => "customers#update"
    get "search" => "searches#index"
    get 'unsubscribe/:id' => 'homes#unsubscribe', as: 'confirm_unsubscribe'
    patch ':id/withdraw' => 'homes#withdraw', as: 'withdraw_customer'
    put 'withdraw/:name' => 'customers#withdraw'
    resources :stores do
     resource :bookmarks, only: [:create, :destroy]
    end
    resources :store_photos
    resource :customers
    resources :reviews
    resources :blogs
    resources :maps
  end
    namespace :admin do
      root "homes#top" 
      get "search" => "searches#search"
      get 'unsubscribe/customer/:id' => 'customers#unsubscribe'
      get 'unsubscribe/shop/:id' => 'shops#unsubscribe'
      patch 'customer/:id/withdraw' => 'customers#withdraw'
      patch 'shop/:id/withdraw' => 'shops#withdraw'
      resources :applications
      resources :shops
      resources :customers
      resources :reviews
      resources :blogs
      resources :shop_photos
      resources :nearest_station
      resources :maps
    end
    namespace :shop do
      root "homes#top" 
      get '/mypage' => "mypages#show"
      get '/mypage/edit' => "mypages#edit"
      patch '/mypage/edit' => "mypages#update"
      get 'unsubscribe/:id' => 'homes#unsubscribe', as: 'confirm_unsubscribe'
      patch ':id/withdraw' => 'homes#withdraw', as: 'withdraw_shop'
      put 'withdraw/:name' => 'shops#withdraw'
   
      resources :blogs
      resources :reviews
      resources :mypages
      resources :homes
      resources :shop_photos
      resources :maps
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
