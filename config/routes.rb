# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'jobs#index'
  resources :jobs, except: :index

  #workshop

  get '/workshop/', to: 'pages#workshop'
  get '/trabajo/', to: 'pages#trabajo'

end
