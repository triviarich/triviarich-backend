Rails.application.routes.draw do
  devise_for :users
  # mount ActionCable.server => '/cable'

  namespace :api do
    namespace :v1 do
      resources :games, only: [] do
        collection do
          get :game_request
        end
      end
    end
  end

  root 'questions#index'

  resources :questions, only: %i[create destroy index new show]

  resources :games, only: %i[index]
end
