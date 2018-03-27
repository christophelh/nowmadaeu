# frozen_string_literal: true

class AddDefaultToPowerbis < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :skills, :boolean, default: false
  end
end
