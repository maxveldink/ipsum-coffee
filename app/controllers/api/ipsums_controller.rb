# frozen_string_literal: true

module Api
  # Controls Ipsum generation
  class IpsumsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index; end

    def create
      render json: { ipsum: "Coffee aeropress hipster brew espresso." }
    end
  end
end
