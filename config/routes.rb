Rails.application.routes.draw do
  resources :courses
  resources :students
  resources :course_registrations
  resources :courses
  resources :equipment
  resources :exec_rooms
  resources :executives
  resources :garants
  resources :lecturers
  resources :rooms
  resources :scores
  resources :students
  resources :terms
  resources :timetables
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
