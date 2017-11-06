Rails.application.routes.draw do
  resources :course_selects
  get 'say/Goodbye'

  get 'greetings/hello'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
