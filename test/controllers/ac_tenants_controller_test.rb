require 'test_helper'

class AcTenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ac_tenant = ac_tenants(:one)
  end

  test "should get index" do
    get ac_tenants_url
    assert_response :success
  end

  test "should get new" do
    get new_ac_tenant_url
    assert_response :success
  end

  test "should create ac_tenant" do
    assert_difference('AcTenant.count') do
      post ac_tenants_url, params: { ac_tenant: { name: @ac_tenant.name } }
    end

    assert_redirected_to ac_tenant_url(AcTenant.last)
  end

  test "should show ac_tenant" do
    get ac_tenant_url(@ac_tenant)
    assert_response :success
  end

  test "should get edit" do
    get edit_ac_tenant_url(@ac_tenant)
    assert_response :success
  end

  test "should update ac_tenant" do
    patch ac_tenant_url(@ac_tenant), params: { ac_tenant: { name: @ac_tenant.name } }
    assert_redirected_to ac_tenant_url(@ac_tenant)
  end

  test "should destroy ac_tenant" do
    assert_difference('AcTenant.count', -1) do
      delete ac_tenant_url(@ac_tenant)
    end

    assert_redirected_to ac_tenants_url
  end
end
