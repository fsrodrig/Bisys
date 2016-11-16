require 'test_helper'

class EntryBicyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entry_bicycle = entry_bicycles(:one)
  end

  test "should get index" do
    get entry_bicycles_url
    assert_response :success
  end

  test "should get new" do
    get new_entry_bicycle_url
    assert_response :success
  end

  test "should create entry_bicycle" do
    assert_difference('EntryBicycle.count') do
      post entry_bicycles_url, params: { entry_bicycle: { bicycle_id_id: @entry_bicycle.bicycle_id_id, entry_id_id: @entry_bicycle.entry_id_id, in_date: @entry_bicycle.in_date, out_date: @entry_bicycle.out_date } }
    end

    assert_redirected_to entry_bicycle_url(EntryBicycle.last)
  end

  test "should show entry_bicycle" do
    get entry_bicycle_url(@entry_bicycle)
    assert_response :success
  end

  test "should get edit" do
    get edit_entry_bicycle_url(@entry_bicycle)
    assert_response :success
  end

  test "should update entry_bicycle" do
    patch entry_bicycle_url(@entry_bicycle), params: { entry_bicycle: { bicycle_id_id: @entry_bicycle.bicycle_id_id, entry_id_id: @entry_bicycle.entry_id_id, in_date: @entry_bicycle.in_date, out_date: @entry_bicycle.out_date } }
    assert_redirected_to entry_bicycle_url(@entry_bicycle)
  end

  test "should destroy entry_bicycle" do
    assert_difference('EntryBicycle.count', -1) do
      delete entry_bicycle_url(@entry_bicycle)
    end

    assert_redirected_to entry_bicycles_url
  end
end
