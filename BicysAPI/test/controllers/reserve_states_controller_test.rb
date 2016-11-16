require 'test_helper'

class ReserveStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserve_state = reserve_states(:one)
  end

  test "should get index" do
    get reserve_states_url
    assert_response :success
  end

  test "should get new" do
    get new_reserve_state_url
    assert_response :success
  end

  test "should create reserve_state" do
    assert_difference('ReserveState.count') do
      post reserve_states_url, params: { reserve_state: { reserve_state: @reserve_state.reserve_state } }
    end

    assert_redirected_to reserve_state_url(ReserveState.last)
  end

  test "should show reserve_state" do
    get reserve_state_url(@reserve_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserve_state_url(@reserve_state)
    assert_response :success
  end

  test "should update reserve_state" do
    patch reserve_state_url(@reserve_state), params: { reserve_state: { reserve_state: @reserve_state.reserve_state } }
    assert_redirected_to reserve_state_url(@reserve_state)
  end

  test "should destroy reserve_state" do
    assert_difference('ReserveState.count', -1) do
      delete reserve_state_url(@reserve_state)
    end

    assert_redirected_to reserve_states_url
  end
end
