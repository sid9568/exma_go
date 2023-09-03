class CreateProgramOfferLists < ActiveRecord::Migration[7.0]
  def change
    create_table :program_offer_lists do |t|
      t.string :title
      t.string :color
      t.references :program_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
