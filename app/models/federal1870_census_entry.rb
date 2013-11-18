class Federal1870CensusEntry < ActiveRecord::Base
  self.primary_key = 'id'
  attr_accessible :age, :district, :family_number, :family_structure, :first_name, :found_in_both, :house_number, :id, :illiterate, :last_name, :ldf_vet_or_family, :male_citizen, :married_within_year, :member_of_veteran_family, :messed_with_right_to_vote, :middle_initial, :month_baby_born, :notes, :occupation, :other, :page_number, :parentage, :personal_estate_owned, :place_of_birth, :post_office, :race, :real_estate_owned, :school_within_year, :sex, :slaveholder_1860, :slaveholding_vet_household_1860, :stamped_page_number, :veteran, :veteran_or_veteran_family, :war_experience

  belongs_to :census_image 

  
  SUPPRESSED_ATTRIBUTES = [
    "",
    "id"
  ]
  
  
  def display_name
    "#{first_name} #{middle_initial} #{last_name}"
  end
  
  
  def self.browsable_attributes
    self.accessible_attributes - SUPPRESSED_ATTRIBUTES
  end
  
  def self.displayable_attributes
    self.accessible_attributes - SUPPRESSED_ATTRIBUTES
  end
  
  def self.browse_by(attribute_name)
    return self.select("#{attribute_name} as value, 
                        count(*) total, 
                        avg(if(real_estate_owned is null, 0, real_estate_owned)) avg_re, 
                        avg(if(personal_estate_owned is null, 0, personal_estate_owned)) avg_pe, 
                        max(if(real_estate_owned is null, 0, real_estate_owned)) max_re, 
                        max(if(personal_estate_owned is null, 0, personal_estate_owned)) max_pe, 
                        round((count(real_estate_owned)/count(*)) * 100) pct_blank_re, 
                        round((count(personal_estate_owned)/count(*)) * 100) pct_blank_pe").group(attribute_name)
  end


end
