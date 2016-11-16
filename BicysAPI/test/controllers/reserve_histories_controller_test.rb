require 'test_helper'

class ReserveHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserve_history = reserve_histories(:one)
  end

  test "should get index" do
    get reserve_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_reserve_history_url
    assert_response :success
  end

  test "should create reserve_history" do
    assert_difference('ReserveHistory.count') do
      post reserve_histories_url, params: { reserve_history: { final_date: @reserve_history.final_date, id_reserve_id: @reserve_history.id_reserve_id, initial_date: @reserve_history.initial_date, reserve_state_id: @reserve_history.reserve_state_id } }
    end

    assert_redirected_to reserve_history_url(ReserveHistory.last)
  end

  test "should show reserve_history" do
    get reserve_history_url(@reserve_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserve_history_url(@reserve_history)
    assert_response :success
  end

  test "should update reserve_history" do
    patch reserve_history_url(@reserve_history), params: { reserve_history: { final_date: @reserve_history.final_date, id_reserve_id: @reserve_history.id_reserve_id, initial_date: @reserve_history.initial_date, reserve_state_id: @reserve_history.reserve_state_id } }
    assert_redirected_to reserve_history_url(@reserve_history)
  end

  test "should destroy reserve_history" do
    assert_difference('ReserveHistory.count', -1) do
      delete reserve_history_url(@reserve_history)
    end

    assert_redirected_to reserve_histories_url
  end
end
