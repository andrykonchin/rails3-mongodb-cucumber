require 'factory_girl'

Factory.define :author do |f|
  f.name 'Brandon Keepers'
end

Factory.define :article do |f|
  f.name        "Practical Cucumber"
  f.content     "This post is part of our Practical Cucumber series."
  f.association :author
end
