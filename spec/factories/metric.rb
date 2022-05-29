# spec/metric.rb

FactoryBot.define do
  factory(:metric) do
    name { Faker::Name.unique.name }
    value { Faker::Number.number(digits: 3) }
    timestamp { Faker::Date.between(from: 1.year.ago , to: Date.today) }
  end
end