require 'test_helper'

class WinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wine = wines(:one)
  end

  test "should get index" do
    get wines_url
    assert_response :success
  end

  test "should get new" do
    get new_wine_url
    assert_response :success
  end

  test "should create wine" do
    assert_difference('Wine.count') do
      post wines_url, params: { wine: { color: @wine.color, country: @wine.country, grapes: @wine.grapes, images: @wine.images, name: @wine.name, region: @wine.region, starts: @wine.starts, string: @wine.string, url: @wine.url, year_made: @wine.year_made } }
    end

    assert_redirected_to wine_url(Wine.last)
  end

  test "should show wine" do
    get wine_url(@wine)
    assert_response :success
  end

  test "should get edit" do
    get edit_wine_url(@wine)
    assert_response :success
  end

  test "should update wine" do
    patch wine_url(@wine), params: { wine: { color: @wine.color, country: @wine.country, grapes: @wine.grapes, images: @wine.images, name: @wine.name, region: @wine.region, starts: @wine.starts, string: @wine.string, url: @wine.url, year_made: @wine.year_made } }
    assert_redirected_to wine_url(@wine)
  end

  test "should destroy wine" do
    assert_difference('Wine.count', -1) do
      delete wine_url(@wine)
    end

    assert_redirected_to wines_url
  end
end
