Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/contestants" => "contestants#index"
  get "/current-round" => "contestants#current_round"
  get "/completed-rounds" => "contestants#completed_rounds"
  get "/reset" => "contestants#reset"

  get "current-question" => "questions#current_question"
end
