class AddpowerToUs < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :power, :boolean
  end
end
