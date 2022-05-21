require "application_system_test_case"

class PostAttachmentsTest < ApplicationSystemTestCase
  setup do
    @post_attachment = post_attachments(:one)
  end

  test "visiting the index" do
    visit post_attachments_url
    assert_selector "h1", text: "Post attachments"
  end

  test "should create post attachment" do
    visit post_attachments_url
    click_on "New post attachment"

    fill_in "Avatar", with: @post_attachment.avatar
    fill_in "Post", with: @post_attachment.post_id
    click_on "Create Post attachment"

    assert_text "Post attachment was successfully created"
    click_on "Back"
  end

  test "should update Post attachment" do
    visit post_attachment_url(@post_attachment)
    click_on "Edit this post attachment", match: :first

    fill_in "Avatar", with: @post_attachment.avatar
    fill_in "Post", with: @post_attachment.post_id
    click_on "Update Post attachment"

    assert_text "Post attachment was successfully updated"
    click_on "Back"
  end

  test "should destroy Post attachment" do
    visit post_attachment_url(@post_attachment)
    click_on "Destroy this post attachment", match: :first

    assert_text "Post attachment was successfully destroyed"
  end
end
