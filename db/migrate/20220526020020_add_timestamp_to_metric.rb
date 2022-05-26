# frozen_string_literal: true

class AddTimestampToMetric < ActiveRecord::Migration[7.0]
  def change
    add_column :metrics, :timestamp, :datetime
  end
end
