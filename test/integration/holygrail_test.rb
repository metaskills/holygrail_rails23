require 'test_helper_integration'

class HolygrailTest < ActionController::IntegrationTest
  
  test "All things JS related" do
    # Get index
    visit demos_path
    assert page.has_selector?('h1#demoIndex'), 'should load the h1 normally'
    find('h1#demoIndex').click
    assert !page.has_selector?('h1#demoIndex'), 'should remove h1 after clicking it'
    
    # raise goto_index_demos_url.inspect
    
    # Redirect to index
    visit goto_index_demos_path
    assert_equal demos_url, page.current_url
  end
  
  
end
