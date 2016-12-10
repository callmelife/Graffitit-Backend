# frozen_string_literal: true
Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
# Was instructed by John to change the following line to the one below it
# resources :users, only: [:index, :show, :create, :destroy, :update]
  resources :battles, only: [:index, :show, :create, :destroy, :update]

end
