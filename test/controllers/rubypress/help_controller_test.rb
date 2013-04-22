require 'test_helper'

module Rubypress
  class HelpControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
