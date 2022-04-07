Rails.application.routes.draw do
  get "shoppers" => "shoppers#index"
  get "shoppers/new" => "shoppers#new"
  post "shoppers" => "shoppers#create"
  get "shoppers/:id/edit" => "shoppers#edit"
  post "shoppers/:id" => "shoppers#update"
  get "shoppers/:id/delete" => "shoppers#delete"
  delete "shoppers/:id" => "shoppers#destroy"
  get "lists" => "lists#index"
  get "lists/new" => "lists#new"
  post "lists" => "lists#create"
end