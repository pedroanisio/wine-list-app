class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :starts
      t.string :country
      t.string :color
      t.string :grapes
      t.integer :year_made
      t.string :region
      t.string :url
      t.string :string
      t.string :images

      t.timestamps
    end
  end
end
