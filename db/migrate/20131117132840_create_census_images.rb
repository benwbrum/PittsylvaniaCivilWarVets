class CreateCensusImages < ActiveRecord::Migration
  def change
    create_table :census_images do |t|
      t.string :filename
      t.string :page_number
      t.string :district
      t.string :year

      t.timestamps
    end
  end
end
