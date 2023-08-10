require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success

    assert_select 'nav.side_nav a', minimum: 4    #  should return the minimum number of links in the navigation bar
    assert_select 'main ul.catalog li', 3         # should return the number of product's count = 3
    assert_select 'h2', 'Programming Ruby 1.9'    # should return title of any product as "Programming Ruby 1.9"
    assert_select '.price', /\$[,\d]+\.\d\d/      # should matach the regular expression given in the second argument i.e. $2.06, $2345.50, $2,345.50 etc
  end
end
