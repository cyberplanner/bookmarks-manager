def visit_and_fill
  visit '/links/new'
  fill_in :title, with: "Google"
  fill_in :url, with: "www.google.com"
end
