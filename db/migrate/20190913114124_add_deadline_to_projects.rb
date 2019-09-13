class AddDeadlineToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :dead_line, :datetime
  end
end
