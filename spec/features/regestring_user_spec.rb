feature "Users sign-up" do
  scenario "user register an account/users count increases by 1" do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content "Welcome, David!"
    expect(User.first.email).to eq "David@mail.com"
  end

end
