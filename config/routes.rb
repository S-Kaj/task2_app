Rails.application.routes.draw do
  get 'reservations/index'
  get 'users/show'
  get 'rooms/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'top#index'

  get 'users/account', to: 'users#account'
  get 'users/profile', to: 'users#profile'

  get 'rooms/posts', to: 'rooms#posts'

  resources :rooms

  resources :reservations

  post 'reservations/confirm' # 確認画面
  post 'reservations/back' # 確認画面から戻る
#  post 'reservations/complete' # 完了画面

end
