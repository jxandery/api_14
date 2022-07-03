Rails.application.routes.draw do

  resources :courses, only: [:create, :show, :index]
  resources :users, only: [:create]
  resources :course_users, only: [:create]

end
