require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  setup do
    @resource = resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource" do
    assert_difference('Resource.count') do
      post :create, resource: { location_id: @resource.location_id, make: @resource.make, model: @resource.model, purchesed_at: @resource.purchesed_at, resource_type: @resource.resource_type, salvage_value: @resource.salvage_value, serial_number: @resource.serial_number, user_name: @resource.user_name }
    end

    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should show resource" do
    get :show, id: @resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource
    assert_response :success
  end

  test "should update resource" do
    put :update, id: @resource, resource: { location_id: @resource.location_id, make: @resource.make, model: @resource.model, purchesed_at: @resource.purchesed_at, resource_type: @resource.resource_type, salvage_value: @resource.salvage_value, serial_number: @resource.serial_number, user_name: @resource.user_name }
    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should destroy resource" do
    assert_difference('Resource.count', -1) do
      delete :destroy, id: @resource
    end

    assert_redirected_to resources_path
  end
end
