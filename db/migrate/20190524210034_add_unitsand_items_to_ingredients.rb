class AddUnitsandItemsToIngredients < ActiveRecord::Migration[6.0]
  def change
    change_table(:ingredients) do |t|
      t.belongs_to :unit, index: true
      t.belongs_to :item, index: true
    end
  end
end
