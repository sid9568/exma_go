class CreateProgramOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :program_offers do |t|
      t.string :title
      t.string :color
      t.references :sub_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
