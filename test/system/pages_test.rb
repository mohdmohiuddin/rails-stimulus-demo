require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit root_url
    assert_selector "label", text: "QUANTITY"
    assert_selector "label", text: "UNIT PRICE"
    
    
    find('#price-drop-down').find(:xpath, '//*[@id="price-drop-down"]/option[2]').select_option 
    assert(200, find('#total-price').value)

    click_button "Add" 
    assert_text "2 x 100 = 200"
  end

end
