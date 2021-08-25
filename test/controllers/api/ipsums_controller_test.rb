# frozen_string_literal: true

require "test_helper"

class IpsumsControllerTest < ActionDispatch::IntegrationTest
  test "index returns index" do
    get api_url

    assert_response :success
    assert_template :index
  end

  test "create returns some ipsum" do
    post api_ipsums_url

    assert_response :success
    assert_equal({ "ipsum" => "Coffee aeropress hipster brew espresso." }, response.parsed_body)
  end
end
