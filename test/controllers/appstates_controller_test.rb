require 'test_helper'

class AppstatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appstate = appstates(:one)
  end

  test "should get index" do
    get appstates_url
    assert_response :success
  end

  test "should get new" do
    get new_appstate_url
    assert_response :success
  end

  test "should create appstate" do
    assert_difference('Appstate.count') do
      post appstates_url, params: { appstate: { description: @appstate.description } }
    end

    assert_redirected_to appstate_url(Appstate.last)
  end

  test "should show appstate" do
    get appstate_url(@appstate)
    assert_response :success
  end

  test "should get edit" do
    get edit_appstate_url(@appstate)
    assert_response :success
  end

  test "should update appstate" do
    patch appstate_url(@appstate), params: { appstate: { description: @appstate.description } }
    assert_redirected_to appstate_url(@appstate)
  end

  test "should destroy appstate" do
    assert_difference('Appstate.count', -1) do
      delete appstate_url(@appstate)
    end

    assert_redirected_to appstates_url
  end
end
