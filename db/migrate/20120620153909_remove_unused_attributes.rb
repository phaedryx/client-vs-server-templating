class RemoveUnusedAttributes < ActiveRecord::Migration
  def up
    remove_column :whatevs, :created_at
    remove_column :whatevs, :updated_at
  end

  def down
    add_column :whatevs, :created_at, :datetime
    add_column :whatevs, :updated_at, :datetime
  end
end
