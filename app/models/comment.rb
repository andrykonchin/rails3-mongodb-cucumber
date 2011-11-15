class Comment
  include Mongoid::Document

  field :name
  field :content
  field :created_at, :type => DateTime

  embedded_in :article

  before_create do |comment|
    comment.created_at = Time.now
  end
end
