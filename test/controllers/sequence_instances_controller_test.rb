require 'test_helper'

class SequenceInstancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sequence_instance = sequence_instances(:one)
  end

  test "should get index" do
    get sequence_instances_url
    assert_response :success
  end

  test "should get new" do
    get new_sequence_instance_url
    assert_response :success
  end

  test "should create sequence_instance" do
    assert_difference('SequenceInstance.count') do
      post sequence_instances_url, params: { sequence_instance: { analysed: @sequence_instance.analysed, sequence_id: @sequence_instance.sequence_id, timestamp: @sequence_instance.timestamp } }
    end

    assert_redirected_to sequence_instance_url(SequenceInstance.last)
  end

  test "should show sequence_instance" do
    get sequence_instance_url(@sequence_instance)
    assert_response :success
  end

  test "should get edit" do
    get edit_sequence_instance_url(@sequence_instance)
    assert_response :success
  end

  test "should update sequence_instance" do
    patch sequence_instance_url(@sequence_instance), params: { sequence_instance: { analysed: @sequence_instance.analysed, sequence_id: @sequence_instance.sequence_id, timestamp: @sequence_instance.timestamp } }
    assert_redirected_to sequence_instance_url(@sequence_instance)
  end

  test "should destroy sequence_instance" do
    assert_difference('SequenceInstance.count', -1) do
      delete sequence_instance_url(@sequence_instance)
    end

    assert_redirected_to sequence_instances_url
  end
end
