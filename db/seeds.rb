# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

names = %w[Chile Alemania Mexico España Argentina Colombia Japon Corea Canada]

500.times do
  attrs = {
    timestamp: DateTime.now - (rand * 21),
    value: rand(500),
    name: names.sample
  }

  Metric.create(attrs)
end
