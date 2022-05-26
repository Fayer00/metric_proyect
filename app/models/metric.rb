# frozen_string_literal: true

# Model
class Metric < ApplicationRecord
  validates :name, presence: true
  validates :value, presence: true

  # @param [String] date
  def self.parse_date(date)
    date.to_datetime
  end

  # @param [String] from
  # @param [String] to
  def self.range(from, to)
    where(timestamp: parse_date(from)..parse_date(to))
  end

  def self.calculate(from, to)
    if from.present? && to.present?
      range(from, to)
    else
      all
    end
  end
end
