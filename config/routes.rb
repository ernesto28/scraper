Rails.application.routes.draw do
  get 'requester/html_parser'
  root to: 'requester#html_parser'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
