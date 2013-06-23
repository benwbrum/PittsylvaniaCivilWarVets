# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130622111147) do

  create_table "Paste Errors", :id => false, :force => true do |t|
    t.text "Field0", :limit => 255
  end

  create_table "federal1860_census_entries", :id => false, :force => true do |t|
    t.integer "id"
    t.string  "house_number",                    :limit => 12
    t.string  "family_number",                   :limit => 100
    t.string  "last_name",                       :limit => 100
    t.string  "first_name",                      :limit => 100
    t.string  "middle_initial",                  :limit => 100
    t.integer "age"
    t.string  "sex",                             :limit => 100, :default => "Female"
    t.string  "race",                            :limit => 100, :default => "White"
    t.string  "occupation",                      :limit => 100
    t.integer "real_estate_owned"
    t.integer "personal_estate_owned"
    t.string  "place_of_birth",                  :limit => 100, :default => "Virginia"
    t.string  "married_within_year",             :limit => 1,   :default => "0",        :null => false
    t.string  "school_within_year",              :limit => 1,   :default => "0",        :null => false
    t.string  "illiterate",                      :limit => 1,   :default => "0",        :null => false
    t.string  "other",                           :limit => 100
    t.string  "district",                        :limit => 100
    t.string  "post_office",                     :limit => 100
    t.string  "page_number",                     :limit => 100
    t.string  "written_page_number",             :limit => 100
    t.string  "notes",                           :limit => 510
    t.string  "veteran",                         :limit => 100, :default => "0"
    t.string  "veteran_or_veteran_family",       :limit => 100
    t.string  "war_experience",                  :limit => 100
    t.string  "family_structure",                :limit => 100
    t.string  "found_in_both",                   :limit => 1,   :default => "0",        :null => false
    t.string  "ldf_vet_or_family",               :limit => 1,   :default => "0",        :null => false
    t.string  "member_of_veteran_family",        :limit => 1,   :default => "0",        :null => false
    t.string  "member_of_veteran_household",     :limit => 1,   :default => "0",        :null => false
    t.string  "slaveholder_1860",                :limit => 1,   :default => "0",        :null => false
    t.string  "slaveholding_vet_household_1860", :limit => 1,   :default => "0",        :null => false
  end

  create_table "federal1870_census_entries", :id => false, :force => true do |t|
    t.integer "id"
    t.string  "house_number",                    :limit => 12
    t.string  "family_number",                   :limit => 100
    t.string  "last_name",                       :limit => 100
    t.string  "first_name",                      :limit => 100
    t.string  "middle_initial",                  :limit => 100
    t.float   "age"
    t.string  "sex",                             :limit => 100, :default => "Female"
    t.string  "race",                            :limit => 100, :default => "White"
    t.string  "occupation",                      :limit => 100
    t.integer "real_estate_owned"
    t.integer "personal_estate_owned"
    t.string  "place_of_birth",                  :limit => 100, :default => "Virginia"
    t.string  "parentage",                       :limit => 100
    t.string  "month_baby_born",                 :limit => 100
    t.string  "married_within_year",             :limit => 100
    t.string  "school_within_year",              :limit => 1,   :default => "0",        :null => false
    t.string  "illiterate",                      :limit => 100
    t.string  "other",                           :limit => 100
    t.string  "district",                        :limit => 100
    t.string  "post_office",                     :limit => 100
    t.string  "page_number",                     :limit => 100
    t.string  "stamped_page_number",             :limit => 100
    t.string  "notes",                           :limit => 510
    t.string  "male_citizen",                    :limit => 1,   :default => "0",        :null => false
    t.string  "messed_with_right_to_vote",       :limit => 1,   :default => "0",        :null => false
    t.string  "veteran",                         :limit => 100, :default => "No"
    t.string  "veteran_or_veteran_family",       :limit => 100
    t.string  "war_experience",                  :limit => 100
    t.string  "family_structure",                :limit => 100
    t.string  "found_in_both",                   :limit => 1,   :default => "0",        :null => false
    t.string  "ldf_vet_or_family",               :limit => 1,   :default => "0",        :null => false
    t.string  "member_of_veteran_family",        :limit => 1,   :default => "0",        :null => false
    t.string  "slaveholding_vet_household_1860", :limit => 1,   :default => "0",        :null => false
    t.string  "slaveholder_1860",                :limit => 1,   :default => "0",        :null => false
  end

  create_table "searches", :force => true do |t|
    t.string   "criterion"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "soldiers", :id => false, :force => true do |t|
    t.string  "name",                         :limit => 510
    t.string  "rank",                         :limit => 510
    t.string  "company",                      :limit => 510
    t.string  "regiment",                     :limit => 510
    t.string  "notes",                        :limit => 510
    t.string  "enlistment",                   :limit => 510
    t.float   "enlistment_age"
    t.string  "prewar_jobs",                  :limit => 510
    t.string  "awol",                         :limit => 510
    t.string  "promotions_or_other_jobs",     :limit => 510
    t.string  "wounding_or_illness",          :limit => 510
    t.string  "not_ill",                      :limit => 510
    t.string  "pow",                          :limit => 510
    t.string  "death",                        :limit => 510
    t.string  "discharge",                    :limit => 510
    t.string  "postwar_info",                 :limit => 510
    t.string  "notes_regt",                   :limit => 510
    t.string  "federal1860_census_entry_id",  :limit => 510
    t.string  "pensioner",                    :limit => 510
    t.string  "federal1870_census_entry_id",  :limit => 510
    t.string  "federal1870_family_member_id", :limit => 510
    t.string  "wife_1870",                    :limit => 510
    t.string  "children_1870",                :limit => 510
    t.string  "other_family_members_1870",    :limit => 510
    t.string  "sutherlin_interactions",       :limit => 510
    t.string  "cause_of_wartime_death",       :limit => 510
    t.string  "field_27",                     :limit => 510
    t.integer "id"
    t.string  "moved_away",                   :limit => 1,   :default => "0", :null => false
  end

  create_table "tbl_family_structure", :id => false, :force => true do |t|
    t.string "choice", :limit => 100
  end

  create_table "tbl_veteran_or_family_choices", :id => false, :force => true do |t|
    t.string "choice", :limit => 100
  end

  create_table "tbl_war_experience", :id => false, :force => true do |t|
    t.string "choice", :limit => 100
  end

end
