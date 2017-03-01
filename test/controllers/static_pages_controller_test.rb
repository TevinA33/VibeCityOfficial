require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
 
  def setup
    @base_title = "VibeCity"
  end
 
  test "should get VibeCity Home" do
   get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end
  
   test "should get VibeCity Help" do
   get help_path
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  test "should get VibeCity About" do
   get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get VibeCity Membership" do
    get membership_path
    assert_response :success
    assert_select "title", "Membership | #{@base_title}"
  end
  
  test "should get VibeCity Miscellaneous Items" do
    get miscellaneous_path
    assert_response :success
    assert_select "title", "Miscellaneous Items | #{@base_title}"
  end
  
  test "should get VibeCity Mixers" do
   get mixers_path
    assert_response :success
    assert_select "title", "Mixers | #{@base_title}"
  end
  
  test "should get VibeCity Music" do
    get music_path
    assert_response :success
    assert_select "title", "Music | #{@base_title}"
  end
  
  test "should get VibeCity Reviews" do
    get reviews_path
    assert_response :success
    assert_select "title", "Reviews | #{@base_title}"
  end
  
  test "should get VibeCity Speakers" do
    get speakers_path
    assert_response :success
    assert_select "title", "Speakers | #{@base_title}"
  end
end
