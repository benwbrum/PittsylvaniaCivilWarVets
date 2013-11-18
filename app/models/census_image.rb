class CensusImage < ActiveRecord::Base
  attr_accessible :district, :filename, :page_number, :year
  has_many :federal1860_census_entry
  has_many :federal1870_census_entry
end
