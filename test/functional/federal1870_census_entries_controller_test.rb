require 'test_helper'

class Federal1870CensusEntriesControllerTest < ActionController::TestCase
  setup do
    @federal1870_census_entry = federal1870_census_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:federal1870_census_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create federal1870_census_entry" do
    assert_difference('Federal1870CensusEntry.count') do
      post :create, federal1870_census_entry: { age: @federal1870_census_entry.age, district: @federal1870_census_entry.district, family_number: @federal1870_census_entry.family_number, family_structure: @federal1870_census_entry.family_structure, first_name: @federal1870_census_entry.first_name, found_in_both: @federal1870_census_entry.found_in_both, house_number: @federal1870_census_entry.house_number, id: @federal1870_census_entry.id, illiterate: @federal1870_census_entry.illiterate, last_name: @federal1870_census_entry.last_name, ldf_vet_or_family: @federal1870_census_entry.ldf_vet_or_family, male_citizen: @federal1870_census_entry.male_citizen, married_within_year: @federal1870_census_entry.married_within_year, member_of_veteran_family: @federal1870_census_entry.member_of_veteran_family, messed_with_right_to_vote: @federal1870_census_entry.messed_with_right_to_vote, middle_initial: @federal1870_census_entry.middle_initial, month_baby_born: @federal1870_census_entry.month_baby_born, notes: @federal1870_census_entry.notes, occupation: @federal1870_census_entry.occupation, other: @federal1870_census_entry.other, page_number: @federal1870_census_entry.page_number, parentage: @federal1870_census_entry.parentage, personal_estate_owned: @federal1870_census_entry.personal_estate_owned, place_of_birth: @federal1870_census_entry.place_of_birth, post_office: @federal1870_census_entry.post_office, race: @federal1870_census_entry.race, real_estate_owned: @federal1870_census_entry.real_estate_owned, school_within_year: @federal1870_census_entry.school_within_year, sex: @federal1870_census_entry.sex, slaveholder_1860: @federal1870_census_entry.slaveholder_1860, slaveholding_vet_household_1860: @federal1870_census_entry.slaveholding_vet_household_1860, stamped_page_number: @federal1870_census_entry.stamped_page_number, veteran: @federal1870_census_entry.veteran, veteran_or_veteran_family: @federal1870_census_entry.veteran_or_veteran_family, war_experience: @federal1870_census_entry.war_experience }
    end

    assert_redirected_to federal1870_census_entry_path(assigns(:federal1870_census_entry))
  end

  test "should show federal1870_census_entry" do
    get :show, id: @federal1870_census_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @federal1870_census_entry
    assert_response :success
  end

  test "should update federal1870_census_entry" do
    put :update, id: @federal1870_census_entry, federal1870_census_entry: { age: @federal1870_census_entry.age, district: @federal1870_census_entry.district, family_number: @federal1870_census_entry.family_number, family_structure: @federal1870_census_entry.family_structure, first_name: @federal1870_census_entry.first_name, found_in_both: @federal1870_census_entry.found_in_both, house_number: @federal1870_census_entry.house_number, id: @federal1870_census_entry.id, illiterate: @federal1870_census_entry.illiterate, last_name: @federal1870_census_entry.last_name, ldf_vet_or_family: @federal1870_census_entry.ldf_vet_or_family, male_citizen: @federal1870_census_entry.male_citizen, married_within_year: @federal1870_census_entry.married_within_year, member_of_veteran_family: @federal1870_census_entry.member_of_veteran_family, messed_with_right_to_vote: @federal1870_census_entry.messed_with_right_to_vote, middle_initial: @federal1870_census_entry.middle_initial, month_baby_born: @federal1870_census_entry.month_baby_born, notes: @federal1870_census_entry.notes, occupation: @federal1870_census_entry.occupation, other: @federal1870_census_entry.other, page_number: @federal1870_census_entry.page_number, parentage: @federal1870_census_entry.parentage, personal_estate_owned: @federal1870_census_entry.personal_estate_owned, place_of_birth: @federal1870_census_entry.place_of_birth, post_office: @federal1870_census_entry.post_office, race: @federal1870_census_entry.race, real_estate_owned: @federal1870_census_entry.real_estate_owned, school_within_year: @federal1870_census_entry.school_within_year, sex: @federal1870_census_entry.sex, slaveholder_1860: @federal1870_census_entry.slaveholder_1860, slaveholding_vet_household_1860: @federal1870_census_entry.slaveholding_vet_household_1860, stamped_page_number: @federal1870_census_entry.stamped_page_number, veteran: @federal1870_census_entry.veteran, veteran_or_veteran_family: @federal1870_census_entry.veteran_or_veteran_family, war_experience: @federal1870_census_entry.war_experience }
    assert_redirected_to federal1870_census_entry_path(assigns(:federal1870_census_entry))
  end

  test "should destroy federal1870_census_entry" do
    assert_difference('Federal1870CensusEntry.count', -1) do
      delete :destroy, id: @federal1870_census_entry
    end

    assert_redirected_to federal1870_census_entries_path
  end
end
