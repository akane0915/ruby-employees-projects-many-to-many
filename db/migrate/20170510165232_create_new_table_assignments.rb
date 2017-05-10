class CreateNewTableAssignments < ActiveRecord::Migration
  def change
    create_table(:assignments) do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :project, index: true
      t.timestamps
    end
    drop_table :employees_projects
  end
end
