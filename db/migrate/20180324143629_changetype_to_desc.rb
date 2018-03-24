class ChangetypeToDesc < ActiveRecord::Migration[5.1]
  def change
    change_column :jobs, :desc, :string
  end
end
