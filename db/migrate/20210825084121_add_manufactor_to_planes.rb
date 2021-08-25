class AddManufactorToPlanes < ActiveRecord::Migration[6.0]
  def change
    add_column :planes, :manufactor, :string
  end
end
