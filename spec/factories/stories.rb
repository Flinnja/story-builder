require 'faker'

FactoryGirl.define do
  factory :story do |s|
    s.title {Faker::Team.name}
    s.lines {Faker::Lorem.sentences}
    s.authors {Faker::Lorem.words}
  end

end
