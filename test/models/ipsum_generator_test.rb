# frozen_string_literal: true

require "test_helper"

class IpsumGeneratorTest < ActiveSupport::TestCase
  test "word returns a word" do
    assert_equal(1, IpsumGenerator.new.word.split.size)
  end

  test "sentence returns a 5 word sentence by default" do
    sentence = IpsumGenerator.new.sentence
    assert_equal(5, sentence.split.size)
    assert_match(/[A-Z]/, sentence.first.first)
    assert_equal(".", sentence.last)
  end

  test "paragraph returns 5 sentences by default" do
    paragraph = IpsumGenerator.new.paragraph
    assert_equal(25, paragraph.split.size)
    assert_match(/[A-Z]/, paragraph.first.first)
    assert_equal(".", paragraph.last)
  end
end
