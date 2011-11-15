class Article
  include Mongoid::Document

  field :name
  field :content
  field :created_at, :type => DateTime

  embeds_many :comments
  referenced_in :author

  delegate :name, :to => :author, :allow_nil => true, :prefix => true

  validates_presence_of :name
  validates_presence_of :author, :on => :create

  before_create do |article|
    article.created_at = Time.now
  end
end
