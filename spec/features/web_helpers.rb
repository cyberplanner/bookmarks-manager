def visit_and_fill
  visit '/links/new'
  fill_in :title, with: "Google"
  fill_in :url, with: "www.google.com"
end

def add_tag
  fill_in(:tag, with: "search engine")
end

def sign_up
  visit '/users/new'
  fill_in :user_name, with: "David"
  fill_in :password, with: "123456789"
  fill_in :email, with: "David@mail.com"
  click_button "Register"
end
