class AddCensusImageIdToFederal1860CensusEntry < ActiveRecord::Migration
  def change
    add_column :federal1860_census_entries, :census_image_id, :integer
  end
end
