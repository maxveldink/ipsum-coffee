# typed: false
# frozen_string_literal: true

module Api
  # Controls Ipsum generation
  class IpsumController < ApplicationController
    def index; end

    def create
      render json: { ipsum: IpsumGenerator.new.paragraph }
    end
  end
end
