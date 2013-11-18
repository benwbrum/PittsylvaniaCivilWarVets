class CensusImage < ActiveRecord::Base
  attr_accessible :district, :filename, :page_number, :year
end
