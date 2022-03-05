class CreateContestants < ActiveRecord::Migration[7.0]
  def change
    create_table :contestants do |t|
      t.string :name
      t.string :image
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end
