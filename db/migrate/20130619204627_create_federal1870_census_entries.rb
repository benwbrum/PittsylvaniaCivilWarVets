class CreateFederal1870CensusEntries < ActiveRecord::Migration
  def change
    create_table :federal1870_census_entries do |t|
      t.integer :id
      t.string :house_number
      t.string :family_number
      t.string :last_name
      t.string :first_name
      t.string :middle_initial
      t.int :age
      t.string :sex
      t.string :race
      t.string :occupation
      t.int :real_estate_owned
      t.int :personal_estate_owned
      t.string :place_of_birth
      t.string :parentage
      t.string :month_baby_born
      t.boolean :married_within_year
      t.boolean :school_within_year
      t.boolean :illiterate
      t.string :other
      t.string :district
      t.string :post_office
      t.string :page_number
      t.string :stamped_page_number
      t.string :notes
      t.boolean :male_citizen
      t.boolean :messed_with_right_to_vote
      t.boolean :veteran
      t.string :veteran_or_veteran_family
      t.string :war_experience
      t.string :family_structure
      t.boolean :found_in_both
      t.boolean :ldf_vet_or_family
      t.boolean :member_of_veteran_family
      t.boolean :slaveholder_1860
      t.boolean :slaveholding_vet_household_1860

      t.timestamps
    end
  end
end
