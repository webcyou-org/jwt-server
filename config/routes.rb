Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'users' => 'users#index'
      post 'users' => 'users#create'
      delete 'users' => 'users#logout'
      post 'user_token' => 'user_token#create'
    end
  end
end
