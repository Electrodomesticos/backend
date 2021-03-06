require 'test_helper'

class CategorizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorization = categorizations(:one)
  end

  test "should get index" do
    get categorizations_url, as: :json
    assert_response :success
  end

  test "should create categorization" do
    assert_difference('Categorization.count') do
      post categorizations_url, params: { categorization: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show categorization" do
    get categorization_url(@categorization), as: :json
    assert_response :success
  end

  test "should update categorization" do
    patch categorization_url(@categorization), params: { categorization: {  } }, as: :json
    assert_response 200
  end

  test "should destroy categorization" do
    assert_difference('Categorization.count', -1) do
      delete categorization_url(@categorization), as: :json
    end

    assert_response 204
  end
end
