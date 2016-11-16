require 'test_helper'

class TerminalEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @terminal_entry = terminal_entries(:one)
  end

  test "should get index" do
    get terminal_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_terminal_entry_url
    assert_response :success
  end

  test "should create terminal_entry" do
    assert_difference('TerminalEntry.count') do
      post terminal_entries_url, params: { terminal_entry: { station: @terminal_entry.station } }
    end

    assert_redirected_to terminal_entry_url(TerminalEntry.last)
  end

  test "should show terminal_entry" do
    get terminal_entry_url(@terminal_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_terminal_entry_url(@terminal_entry)
    assert_response :success
  end

  test "should update terminal_entry" do
    patch terminal_entry_url(@terminal_entry), params: { terminal_entry: { station: @terminal_entry.station } }
    assert_redirected_to terminal_entry_url(@terminal_entry)
  end

  test "should destroy terminal_entry" do
    assert_difference('TerminalEntry.count', -1) do
      delete terminal_entry_url(@terminal_entry)
    end

    assert_redirected_to terminal_entries_url
  end
end
