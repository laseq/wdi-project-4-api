require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url, as: :json
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { description: @event.description, dress_code: @event.dress_code, end_time: @event.end_time, group_id: @event.group_id, location: @event.location, name: @event.name, start_time: @event.start_time, status: @event.status } }, as: :json
    end

    assert_response 201
  end

  test "should show event" do
    get event_url(@event), as: :json
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { description: @event.description, dress_code: @event.dress_code, end_time: @event.end_time, group_id: @event.group_id, location: @event.location, name: @event.name, start_time: @event.start_time, status: @event.status } }, as: :json
    assert_response 200
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event), as: :json
    end

    assert_response 204
  end
end
