require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit root_url
    assert_selector "label", text: "QAUNTITY"

    find('#sel1').find(:xpath, '//*[@id="sel1"]/option[2]').select_option 
    assert(200, find('#total-price').value)
  end

end
