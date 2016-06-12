class Chit
  include DataMapper::Resource

  property :id, Serial
  property :chit_text, Text, required: true
  property :chit_time, String

  has n, :replies
  belongs_to :user
end
