class Story
  include Mongoid::Document
  field :title, type: String
  field :lines, type: Array
  field :authours, type: Array
end
