Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    namespace 'v1' do
      resources :facilities
      get "facilities/:col/:val" => "facilities#find_show"

      resources :categories
      get "categories/:val" => "categories#facilities_show"

      resources :events
    end
  end
end
