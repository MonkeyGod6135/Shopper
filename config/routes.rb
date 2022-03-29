Rails.application.routes.draw do
  get "shoppers" => "shoppers#index"
  get "shoppers/new" => "shoppers#new"
  post "shoppers" => "shoppers#create"
end