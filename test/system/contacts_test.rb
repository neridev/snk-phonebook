require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "should create contact" do
    visit contacts_url
    click_on "New contact"

    fill_in "Klapka", with: @contact.klapka
    fill_in "Meno", with: @contact.meno
    fill_in "Priezvisko", with: @contact.priezvisko
    fill_in "Sluzobny mobil", with: @contact.sluzobny_mobil
    fill_in "Titul pred", with: @contact.titul_pred
    fill_in "Titul za", with: @contact.titul_za
    fill_in "Verejne cislo", with: @contact.verejne_cislo
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "should update Contact" do
    visit contact_url(@contact)
    click_on "Edit this contact", match: :first

    fill_in "Klapka", with: @contact.klapka
    fill_in "Meno", with: @contact.meno
    fill_in "Priezvisko", with: @contact.priezvisko
    fill_in "Sluzobny mobil", with: @contact.sluzobny_mobil
    fill_in "Titul pred", with: @contact.titul_pred
    fill_in "Titul za", with: @contact.titul_za
    fill_in "Verejne cislo", with: @contact.verejne_cislo
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact" do
    visit contact_url(@contact)
    click_on "Destroy this contact", match: :first

    assert_text "Contact was successfully destroyed"
  end
end
