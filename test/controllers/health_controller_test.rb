# frozen_string_literal: true

require "test_helper"

class HealthControllerTest < ActionDispatch::IntegrationTest
  test "health returns up" do
    get health_url
    assert_response :success
    assert_match("up", response.body)
  end
end
