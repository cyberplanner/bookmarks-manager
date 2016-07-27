
feature "creating links" do

  scenario "user adds a link to datatbase" do
    visit '/links/new'
    fill_in :title, with: "Google"
    fill_in :url, with: "www.google.com"
    click_button "Add Link"
    expect(current_path).to eq '/links'
    within "ul#links" do
      expect(page).to have_content "Google"
    end
  end
end
