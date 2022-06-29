# typed: false
# frozen_string_literal: true

# Serves simple pages
class PagesController < ApplicationController
  def home
    @initial_ipsum = IpsumGenerator.new.paragraph
  end
end
