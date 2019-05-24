class AddColumnstoIngredients < ActiveRecord::Migration[6.0]
  def change
    change_table(:ingredients) do |t|
      t.belongs_to :recipe, index: true
    end
  end
end
