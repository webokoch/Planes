class CreatePlanes < ActiveRecord::Migration[6.0]
  def change
    create_table :planes do |t|
      t.string :name
      t.string :aircraft_type
      t.integer :engines
      t.integer :range
      t.integer :passengers

      t.timestamps
    end
  end
end
