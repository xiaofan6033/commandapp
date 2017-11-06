require 'test_helper'

class SayControllerTest < ActionDispatch::IntegrationTest
  test "should get Goodbye" do
    get say_Goodbye_url
    assert_response :success
  end

end
