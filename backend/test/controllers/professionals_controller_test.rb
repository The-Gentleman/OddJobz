require 'test_helper'

class ProfessionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional = professionals(:one)
  end

  test "should get index" do
    get professionals_url, as: :json
    assert_response :success
  end

  test "should create professional" do
    assert_difference('Professional.count') do
      post professionals_url, params: { professional: { name: @professional.name, profession: @professional.profession, stars: @professional.stars } }, as: :json
    end

    assert_response 201
  end

  test "should show professional" do
    get professional_url(@professional), as: :json
    assert_response :success
  end

  test "should update professional" do
    patch professional_url(@professional), params: { professional: { name: @professional.name, profession: @professional.profession, stars: @professional.stars } }, as: :json
    assert_response 200
  end

  test "should destroy professional" do
    assert_difference('Professional.count', -1) do
      delete professional_url(@professional), as: :json
    end

    assert_response 204
  end
end
