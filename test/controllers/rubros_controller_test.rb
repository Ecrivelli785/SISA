require 'test_helper'

class RubrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubro = rubros(:one)
  end

  test "should get index" do
    get rubros_url
    assert_response :success
  end

  test "should get new" do
    get new_rubro_url
    assert_response :success
  end

  test "should create rubro" do
    assert_difference('Rubro.count') do
      post rubros_url, params: { rubro: { descripcion_tr: @rubro.descripcion_tr } }
    end

    assert_redirected_to rubro_url(Rubro.last)
  end

  test "should show rubro" do
    get rubro_url(@rubro)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubro_url(@rubro)
    assert_response :success
  end

  test "should update rubro" do
    patch rubro_url(@rubro), params: { rubro: { descripcion_tr: @rubro.descripcion_tr } }
    assert_redirected_to rubro_url(@rubro)
  end

  test "should destroy rubro" do
    assert_difference('Rubro.count', -1) do
      delete rubro_url(@rubro)
    end

    assert_redirected_to rubros_url
  end
end
