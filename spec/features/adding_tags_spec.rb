
feature "adding tags" do
  scenario "User adds a link with a tag" do
    visit_and_fill
    fill_in :tag, with: "search engine"
    click_button "Add Link"
    expect(page).to have_content "search engine"
  end
end
