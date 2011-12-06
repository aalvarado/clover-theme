require 'test_helper'

class LayoutSelectorsTest < ActiveSupport::IntegrationCase
  test "home page" do
    visit root_path

    assert_equal 200, page.status_code
    assert page.has_selector?( '#wrapper' )

    within "#wrapper" do
      test_selectors %w/#top #banner #mid #footer/

      #Only the home page shows a banner with slider
      within "#banner" do
        test_selectors %w/#intro #slider/

        within( "#intro h1" ) { assert page.has_content? 'Impulsamos' }
        within( "#intro h3" ) { assert page.has_content? 'Consigue' }

        within "#slider" do
          test_selectors %w/#slider_left #slider_right .container/
          assert page.has_selector?( ".container .slides div img" )
        end
      end

      within( "#mid #content" ) { assert page.has_content?( 'main page' ) }

      test_footer_contact_info
    end
  end

  test "internal page" do
    visit page_path( 'foo', 'bar' )

    assert_equal 200, page.status_code
    assert page.has_selector?( "#wrapper" )
    assert page.has_selector?( "#banner" )
    assert page.has_selector?( "#imid" )

    within( "#imid" ) do
      assert page.has_selector?( "#column" )
      assert page.has_selector?( "#content" )

      within( "#content" ) do
        assert page.has_selector?( "h1" )
      end
    end

    test_footer_contact_info
  end

  private
  def test_selectors selectors
    selectors.each { |selector| assert page.has_selector?( selector ) }
  end

  def test_footer_contact_info
    within( "#footer" ) do
      assert page.has_content? 'info@cloverinteractive.com'
      assert page.has_content? 'Email'
      assert page.has_content? 'Skype'
      assert page.has_content? 'US'
      assert page.has_content? 'MX'
    end
  end
end
