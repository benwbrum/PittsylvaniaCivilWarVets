require 'browsable'
class Federal1860CensusEntry < ActiveRecord::Base
  include Browsable
  
  self.primary_key = 'id'
  attr_accessible :age, :district, :family_number, :family_structure, :first_name, :found_in_both, :house_number, :id, :illiterate, :last_name, :ldf_vet_or_family, :married_within_year, :member_of_veteran_family, :member_of_veteran_household, :middle_initial, :notes, :occupation, :other, :page_number, :personal_estate_owned, :place_of_birth, :post_office, :race, :real_estate_owned, :school_within_year, :sex, :slaveholder_1860, :slaveholding_vet_household_1860, :veteran, :veteran_or_veteran_family, :war_experience, :written_page_number
  
  SUPPRESSED_ATTRIBUTES = [
    "",
    "id"
  ]


  def self.display_year
    '1860'
  end
  
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
