# typed: false
# frozen_string_literal: true

require "test_helper"

class HealthControllerTest < ActionDispatch::IntegrationTest
  test "health returns up" do
    get health_url
    assert_response :success
    assert_equal({ "status" => "up" }, response.parsed_body)
  end
end
