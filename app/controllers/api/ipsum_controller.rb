# frozen_string_literal: true

module Api
  # Controls Ipsum generation
  class IpsumController < ApplicationController
    def index; end

    def create
      render json: { ipsum: "Coffee aeropress hipster brew espresso." }
    end
  end
end
