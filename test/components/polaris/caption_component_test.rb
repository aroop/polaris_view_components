require "test_helper"

class CaptionComponentTest < Minitest::Test
  include Polaris::ComponentTestHelpers

  def test_caption
    render_inline(Polaris::CaptionComponent.new) { "Caption Content" }

    assert_selector "p.Polaris-Caption", text: "Caption Content"
  end
end
