class CreateMen < ActiveRecord::Migration[7.0]
  def change
    create_table :men do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
