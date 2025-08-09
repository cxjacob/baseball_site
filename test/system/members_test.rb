require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "should create member" do
    visit members_url
    click_on "New member"

    fill_in "Avatar", with: @member.avatar
    fill_in "Bio", with: @member.bio
    fill_in "Name", with: @member.name
    fill_in "Number", with: @member.number
    fill_in "Position", with: @member.position
    fill_in "Throws bats", with: @member.throws_bats
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "should update Member" do
    visit member_url(@member)
    click_on "Edit this member", match: :first

    fill_in "Avatar", with: @member.avatar
    fill_in "Bio", with: @member.bio
    fill_in "Name", with: @member.name
    fill_in "Number", with: @member.number
    fill_in "Position", with: @member.position
    fill_in "Throws bats", with: @member.throws_bats
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "should destroy Member" do
    visit member_url(@member)
    accept_confirm { click_on "Destroy this member", match: :first }

    assert_text "Member was successfully destroyed"
  end
end
