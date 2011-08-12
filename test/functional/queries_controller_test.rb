require 'test_helper'

class QueriesControllerTest < ActionController::TestCase
  
  test "should get an atom feed at index" do
    get :index, :format => :atom
    assert_response :success
  end
  
  test "POST should add a new job without filter" do
    post :create, create_job_params
    assert_response 201
  end
  
  test "should reject jobs without a reduce function" do
    job_params = create_job_params
    job_params.delete(:reduce)
    post :create, job_params
    assert_response 400
  end
end
