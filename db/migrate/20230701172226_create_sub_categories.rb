class CreateSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_categories do |t|
      t.string :program
      t.references :category, null: true

      t.timestamps
    end
  end
end
