class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_column :dishes, :restaurant_id, :integer
  end
end
