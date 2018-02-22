require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Juken-app"
    assert_equal full_title("Help"), "Help | Juken-app"
  end
end
