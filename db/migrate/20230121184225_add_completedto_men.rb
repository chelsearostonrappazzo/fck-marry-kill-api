class AddCompletedtoMen < ActiveRecord::Migration[7.0]
  def change
    add_column :men, :completed, :boolean, default => false
  end
end
