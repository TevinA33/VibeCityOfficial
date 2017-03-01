require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
 test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", speakers_path
    assert_select "a[href=?]", reviews_path
    assert_select "a[href=?]", music_path
    assert_select "a[href=?]", mixers_path
    assert_select "a[href=?]", miscellaneous_path
    assert_select "a[href=?]", membership_path
  end
end
