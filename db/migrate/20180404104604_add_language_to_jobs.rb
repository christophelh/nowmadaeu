class AddLanguageToJobs < ActiveRecord::Migration[5.1]
    def change
      add_column :jobs, :language, :string
    end
end
