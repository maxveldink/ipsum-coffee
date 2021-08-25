# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "pages#home"

  get "/health", to: "health#index"
end
