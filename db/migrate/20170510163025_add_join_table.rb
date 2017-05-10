class AddJoinTable < ActiveRecord::Migration
  def change
    change_table(:employees) do |t|
      t.remove(:project_id)
    end

    create_table(:employees_projects) do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :project, index: true
      t.timestamps
    end
  end
end
