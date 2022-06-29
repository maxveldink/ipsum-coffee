# typed: strict
# frozen_string_literal: true

# Creates Ipsum based on parameters
class IpsumGenerator
  extend T::Sig

  sig { void }
  def initialize
    available_words = File.read(Rails.root.join("available_words.txt")).split("\n")
    @available_words = T.let(available_words, T::Array[String])
  end

  sig { returns(String) }
  def word
    word = available_words.sample

    return "coffee" unless word

    word.is_a?(String) ? word : "coffee"
  end

  sig { returns(String) }
  def sentence
    words = available_words.sample(5)

    return "Coffee ipsum hipster brew madagascar." unless words

    if words.is_a?(Array)
      words.join(" ").capitalize << "."
    else
      "Coffee ipsum hipster brew madagascar."
    end
  end

  sig { returns(String) }
  def paragraph
    Array.new(5).map { sentence }.join(" ")
  end

  private

  sig { returns(T::Array[String]) }
  attr_reader :available_words
end
