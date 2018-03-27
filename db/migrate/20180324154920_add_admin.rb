# frozen_string_literal: true

class AddAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :boolean
  end
end
