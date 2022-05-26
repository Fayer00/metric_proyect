# frozen_string_literal: true

class CreateMetrics < ActiveRecord::Migration[7.0]
  def change
    create_table :metrics do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
