require "application_system_test_case"

class SecretCodesTest < ApplicationSystemTestCase
  setup do
    @secret_code = secret_codes(:one)
  end

  test "visiting the index" do
    visit secret_codes_url
    assert_selector "h1", text: "Secret Codes"
  end

  test "creating a Secret code" do
    visit secret_codes_url
    click_on "New Secret Code"

    fill_in "Secret code", with: @secret_code.secret_code
    fill_in "User", with: @secret_code.user_id
    click_on "Create Secret code"

    assert_text "Secret code was successfully created"
    click_on "Back"
  end

  test "updating a Secret code" do
    visit secret_codes_url
    click_on "Edit", match: :first

    fill_in "Secret code", with: @secret_code.secret_code
    fill_in "User", with: @secret_code.user_id
    click_on "Update Secret code"

    assert_text "Secret code was successfully updated"
    click_on "Back"
  end

  test "destroying a Secret code" do
    visit secret_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Secret code was successfully destroyed"
  end
end
