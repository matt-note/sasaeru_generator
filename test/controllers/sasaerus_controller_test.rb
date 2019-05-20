require 'test_helper'

class SasaerusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sasaeru = sasaerus(:one)
  end

  test "should get index" do
    get sasaerus_url
    assert_response :success
  end

  test "should get new" do
    get new_sasaeru_url
    assert_response :success
  end

  test "should create sasaeru" do
    assert_difference('Sasaeru.count') do
      post sasaerus_url, params: { sasaeru: { author: @sasaeru.author, base_color: @sasaeru.base_color, bottom_text: @sasaeru.bottom_text, lead: @sasaeru.lead, sub_lead_1: @sasaeru.sub_lead_1, sub_lead_2: @sasaeru.sub_lead_2, sub_lead_3: @sasaeru.sub_lead_3, sub_lead_4: @sasaeru.sub_lead_4, sub_title: @sasaeru.sub_title, title: @sasaeru.title, top_text: @sasaeru.top_text } }
    end

    assert_redirected_to sasaeru_url(Sasaeru.last)
  end

  test "should show sasaeru" do
    get sasaeru_url(@sasaeru)
    assert_response :success
  end

  test "should get edit" do
    get edit_sasaeru_url(@sasaeru)
    assert_response :success
  end

  test "should update sasaeru" do
    patch sasaeru_url(@sasaeru), params: { sasaeru: { author: @sasaeru.author, base_color: @sasaeru.base_color, bottom_text: @sasaeru.bottom_text, lead: @sasaeru.lead, sub_lead_1: @sasaeru.sub_lead_1, sub_lead_2: @sasaeru.sub_lead_2, sub_lead_3: @sasaeru.sub_lead_3, sub_lead_4: @sasaeru.sub_lead_4, sub_title: @sasaeru.sub_title, title: @sasaeru.title, top_text: @sasaeru.top_text } }
    assert_redirected_to sasaeru_url(@sasaeru)
  end

  test "should destroy sasaeru" do
    assert_difference('Sasaeru.count', -1) do
      delete sasaeru_url(@sasaeru)
    end

    assert_redirected_to sasaerus_url
  end
end
