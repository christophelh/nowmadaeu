class CreateCompanyprofiles < ActiveRecord::Migration[5.1]
  def change
    create_table :companyprofiles do |t|
      t.string :name
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
