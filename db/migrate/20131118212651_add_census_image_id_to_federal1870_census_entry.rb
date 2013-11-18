class AddCensusImageIdToFederal1870CensusEntry < ActiveRecord::Migration
  def change
    add_column :federal1870_census_entries, :census_image_id, :integer
  end
end
