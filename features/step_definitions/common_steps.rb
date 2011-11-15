Given /^an author exists with a name of "([^"]*)"$/ do |name|
  Author.create! :name => name
end

