feature "Users sign-up" do
  scenario "user register an account/users count increases by 1" do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content "Welcome, David!"
    expect(User.first.email).to eq "David@mail.com"
  end


  scenario "no user created with a mismatching password" do
    visit '/users/new'
    fill_in :user_name, with:              "David"
    fill_in :password, with:               "123456789"
    fill_in :password_confirmation, with:  "123"
    fill_in :email, with:                  "David@mail.com"
    expect { click_button "Register" }.not_to change(User, :count)
    # expect(page).to have_content("Passwords do not match")
  end
end
