# frozen_string_literal: true

# Metric Model
class Metric < ApplicationRecord
  validates :name, presence: true
  validates :value, presence: true
  validates :timestamp, presence: true

  # @param [DateTime] from
  # @param [DateTime] to
  def self.range(from, to)
    where(timestamp: from..to)
  end

  # @param [DateTime] from
  # @param [DateTime] to
  def self.calculate(from, to)
    if from.present? && to.present?
      range(from, to)
    else
      all
    end
  end
end
