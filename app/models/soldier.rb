class Soldier < ActiveRecord::Base

  self.primary_key = 'id'
 
  attr_accessible :awol, :cause_of_wartime_death, :children_1870, :company, :death, :discharge, :enlistment, :enlistment_age, :federal1860_census_entry_id, :federal1870_census_entry_id, :federal1870_family_member_id, :id, :moved_away, :name, :not_ill, :notes, :notes_regt, :other_family_members_1870, :pensioner, :postwar_info, :pow, :prewar_jobs, :promotions_or_other_jobs, :rank, :regiment, :sutherlin_interactions, :wife_1870, :wounding_or_illness
  
  belongs_to :federal1860_census_entry
  belongs_to :federal1870_census_entry
  
end
