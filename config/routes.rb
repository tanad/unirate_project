require 'api_constraints'

Workspace::Application.routes.draw do
  
  devise_for :users
  namespace :api, defaults:  { format: :json } , path: '/api' do
    scope module: :v1, 
                constraints: ApiConstraints.new(version: 1, default: true) do
                   resources :users, :only => [:show, :create, :update, :destroy]
                   resources :sessions, :only => [:create, :destroy]
                   resources :schools, :only => [:show]
    end
  end
end
