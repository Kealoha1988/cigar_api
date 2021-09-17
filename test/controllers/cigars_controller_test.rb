require "test_helper"

class CigarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cigar = cigars(:one)
  end

  test "should get index" do
    get cigars_url, as: :json
    assert_response :success
  end

  test "should create cigar" do
    assert_difference('Cigar.count') do
      post cigars_url, params: { cigar: { about: @cigar.about, brand: @cigar.brand, country: @cigar.country, line: @cigar.line, size: @cigar.size } }, as: :json
    end

    assert_response 201
  end

  test "should show cigar" do
    get cigar_url(@cigar), as: :json
    assert_response :success
  end

  test "should update cigar" do
    patch cigar_url(@cigar), params: { cigar: { about: @cigar.about, brand: @cigar.brand, country: @cigar.country, line: @cigar.line, size: @cigar.size } }, as: :json
    assert_response 200
  end

  test "should destroy cigar" do
    assert_difference('Cigar.count', -1) do
      delete cigar_url(@cigar), as: :json
    end

    assert_response 204
  end
end
