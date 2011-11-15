class Author
  include Mongoid::Document

  field :name

  references_many :articles

  validates_presence_of :name
end
