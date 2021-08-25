# frozen_string_literal: true

require "test_helper"

class IpsumControllerTest < ActionDispatch::IntegrationTest
  test "index returns index" do
    get api_path

    assert_template :index
  end
end
