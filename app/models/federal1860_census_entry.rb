require 'browsable'
class Federal1860CensusEntry < ActiveRecord::Base
  include Browsable
  
  self.primary_key = 'id'
  attr_accessible :age, :district, :family_number, :family_structure, :first_name, :found_in_both, :house_number, :id, :illiterate, :last_name, :ldf_vet_or_family, :married_within_year, :member_of_veteran_family, :member_of_veteran_household, :middle_initial, :notes, :occupation, :other, :page_number, :personal_estate_owned, :place_of_birth, :post_office, :race, :real_estate_owned, :school_within_year, :sex, :slaveholder_1860, :slaveholding_vet_household_1860, :veteran, :veteran_or_veteran_family, :war_experience, :written_page_number
  
  has_one :soldier
  belongs_to :census_image 
  
  SUPPRESSED_ATTRIBUTES = [
    "",
    "id"
  ]

  FIRST_ORDERED_ATTRIBUTES = [
    "last_name",
    "first_name",
    "middle_initial"
  ]
  
  FINAL_ORDERED_ATTRIBUTES = [
    "written_page_number"    
  ]



  def household
    Federal1860CensusEntry.where(:district => self.district, :house_number => self.house_number).order(:id)
  end

  def head_of_next_household
    Federal1860CensusEntry.where(:district => self.district, :house_number => self.house_number.to_i + 1).order(:id).first
  end

  def head_of_previous_household
    Federal1860CensusEntry.where(:district => self.district, :house_number => self.house_number.to_i - 1).order(:id).first
  end
  
  def next_entry
    Federal1860CensusEntry.where(:id => self.id+1).first
  end

  def previous_entry
    Federal1860CensusEntry.where(:id => self.id-1).first
  end

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
    displayable_superset = self.accessible_attributes.to_a - SUPPRESSED_ATTRIBUTES
    middle_subset = (displayable_superset - FIRST_ORDERED_ATTRIBUTES) - FINAL_ORDERED_ATTRIBUTES
    displayable = FIRST_ORDERED_ATTRIBUTES
    displayable += middle_subset
    displayable += FINAL_ORDERED_ATTRIBUTES
    logger.debug(displayable.inspect)    
    displayable
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
