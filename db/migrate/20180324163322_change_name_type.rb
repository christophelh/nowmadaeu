class ChangeNameType < ActiveRecord::Migration[5.1]
  def change
    rename_column :jobs, :type, :category
  end
end
