Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'backgrounds/index'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'forecast/show'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :forecast, only: [:show]
      resources :backgrounds, only: [:show]
    end
  end
end
