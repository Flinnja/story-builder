class Story
  include Mongoid::Document
  validates :title, presence: true
  field :title, type: String
  field :lines, type: Array
  field :authors, type: Array
end
