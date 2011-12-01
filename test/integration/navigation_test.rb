require 'test_helper'

class NavigationTest < ActiveSupport::IntegrationCase
  test "can load home page" do
    visit root_path
    assert_equal 200, page.status_code
  end

  test "can visit the show action" do
    visit page_path( :section_name => 'foo', :page_name => 'bar' )
    assert_equal 200, page.status_code
  end
end
