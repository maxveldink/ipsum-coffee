# frozen_string_literal: true

require "test_helper"

class IpsumControllerTest < ActionDispatch::IntegrationTest
  test "index returns index" do
    get api_url

    assert_response :success
    assert_template :index
  end

  test "create returns some ipsum" do
    get api_generate_url

    assert_response :success
    assert_equal({ "ipsum" => "Coffee aeropress hipster brew espresso." }, response.parsed_body)
  end
end
