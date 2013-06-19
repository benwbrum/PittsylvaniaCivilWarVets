class Federal1860CensusEntry < ActiveRecord::Base
  attr_accessible :age, :district, :family_number, :family_structure, :first_name, :found_in_both, :house_number, :id, :illiterate, :last_name, :ldf_vet_or_family, :married_within_year, :member_of_veteran_family, :member_of_veteran_household, :middle_initial, :notes, :occupation, :other, :page_number, :personal_estate_owned, :place_of_birth, :post_office, :race, :real_estate_owned, :school_within_year, :sex, :slaveholder_1860, :slaveholding_vet_household_1860, :veteran, :veteran_or_veteran_family, :war_experience, :written_page_number
end
