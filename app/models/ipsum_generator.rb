# frozen_string_literal: true

# Creates Ipsum based on parameters
class IpsumGenerator
  # @return [String]
  def word
    available_words.sample || "coffee"
  end

  # @return [String]
  def sentence
    available_words.sample(5).join(" ").capitalize << "."
  end

  # @return [String]
  def paragraph
    Array.new(5).map { sentence }.join(" ")
  end

  private

  # @return [Array<String>]
  def available_words
    @available_words ||= File.read(Rails.root.join("available_words.txt")).split("\n")
  end
end
