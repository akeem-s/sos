Rails.application.routes.draw do
  root 'phones#input'
  get 'phones/input', :to => 'phones#input'
  post 'phones/call', :to => 'phones#call'
end
