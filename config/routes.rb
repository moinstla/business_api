Rails.application.routes.draw do

  concern :paginatable do
  get '(page/:page)', action: :index, on: :collection, as: ''
end

  resources :businesses, concerns: :paginatable
end
