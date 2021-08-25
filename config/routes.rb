# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "pages#home"

  get "/health", to: "health#index"

  namespace "api" do
    get "/", to: "ipsums#index"

    resources :ipsums, only: %i[index create]
  end
end
