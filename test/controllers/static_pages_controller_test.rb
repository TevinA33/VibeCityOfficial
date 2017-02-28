require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
 
  def setup
    @base_title = "VibeCity"
  end
 
  test "should get VibeCity Home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  
   test "should get VibeCity Help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  test "should get VibeCity About" do
    get static_pages_about_url
    assert_response :success
     assert_select "title", "About | #{@base_title}"
  end
  
  test "should get VibeCity Membership" do
    get static_pages_membership_url
    assert_response :success
    assert_select "title", "Membership | #{@base_title}"
  end
  
  test "should get VibeCity Miscellaneous Items" do
    get static_pages_miscellaneous_url
    assert_response :success
    assert_select "title", "Miscellaneous Items | #{@base_title}"
  end
  
  test "should get VibeCity Mixers" do
    get static_pages_mixers_url
    assert_response :success
    assert_select "title", "Mixers | #{@base_title}"
  end
  
  test "should get VibeCity Music" do
    get static_pages_music_url
    assert_response :success
    assert_select "title", "Music | #{@base_title}"
  end
  
  test "should get VibeCity Reviews" do
    get static_pages_reviews_url
    assert_response :success
    assert_select "title", "Reviews | #{@base_title}"
  end
  
  test "should get VibeCity Speakers" do
    get static_pages_speakers_url
    assert_response :success
    assert_select "title", "Speakers | #{@base_title}"
  end
end
