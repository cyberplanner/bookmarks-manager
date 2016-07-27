def visit_and_fill
  visit '/links/new'
  fill_in :title, with: "Google"
  fill_in :url, with: "www.google.com"
end

def add_tag
  fill_in(:tag, with: "search engine") 
end
