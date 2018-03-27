# frozen_string_literal: true

class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :desc
      t.string :url
      t.string :contact
      t.string :type

      t.timestamps
    end
  end
end
