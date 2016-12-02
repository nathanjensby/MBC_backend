class RenameRecipesDescription < ActiveRecord::Migration[5.0]
  def change
  change_table :recipes do |t|
  t.rename :description, :instructions
end
  end
end
