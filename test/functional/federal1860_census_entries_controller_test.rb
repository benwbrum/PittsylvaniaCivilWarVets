require 'test_helper'

class Federal1860CensusEntriesControllerTest < ActionController::TestCase
  setup do
    @federal1860_census_entry = federal1860_census_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:federal1860_census_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create federal1860_census_entry" do
    assert_difference('Federal1860CensusEntry.count') do
      post :create, federal1860_census_entry: { age: @federal1860_census_entry.age, district: @federal1860_census_entry.district, family_number: @federal1860_census_entry.family_number, family_structure: @federal1860_census_entry.family_structure, first_name: @federal1860_census_entry.first_name, found_in_both: @federal1860_census_entry.found_in_both, house_number: @federal1860_census_entry.house_number, id: @federal1860_census_entry.id, illiterate: @federal1860_census_entry.illiterate, last_name: @federal1860_census_entry.last_name, ldf_vet_or_family: @federal1860_census_entry.ldf_vet_or_family, married_within_year: @federal1860_census_entry.married_within_year, member_of_veteran_family: @federal1860_census_entry.member_of_veteran_family, member_of_veteran_household: @federal1860_census_entry.member_of_veteran_household, middle_initial: @federal1860_census_entry.middle_initial, notes: @federal1860_census_entry.notes, occupation: @federal1860_census_entry.occupation, other: @federal1860_census_entry.other, page_number: @federal1860_census_entry.page_number, personal_estate_owned: @federal1860_census_entry.personal_estate_owned, place_of_birth: @federal1860_census_entry.place_of_birth, post_office: @federal1860_census_entry.post_office, race: @federal1860_census_entry.race, real_estate_owned: @federal1860_census_entry.real_estate_owned, school_within_year: @federal1860_census_entry.school_within_year, sex: @federal1860_census_entry.sex, slaveholder_1860: @federal1860_census_entry.slaveholder_1860, slaveholding_vet_household_1860: @federal1860_census_entry.slaveholding_vet_household_1860, veteran: @federal1860_census_entry.veteran, veteran_or_veteran_family: @federal1860_census_entry.veteran_or_veteran_family, war_experience: @federal1860_census_entry.war_experience, written_page_number: @federal1860_census_entry.written_page_number }
    end

    assert_redirected_to federal1860_census_entry_path(assigns(:federal1860_census_entry))
  end

  test "should show federal1860_census_entry" do
    get :show, id: @federal1860_census_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @federal1860_census_entry
    assert_response :success
  end

  test "should update federal1860_census_entry" do
    put :update, id: @federal1860_census_entry, federal1860_census_entry: { age: @federal1860_census_entry.age, district: @federal1860_census_entry.district, family_number: @federal1860_census_entry.family_number, family_structure: @federal1860_census_entry.family_structure, first_name: @federal1860_census_entry.first_name, found_in_both: @federal1860_census_entry.found_in_both, house_number: @federal1860_census_entry.house_number, id: @federal1860_census_entry.id, illiterate: @federal1860_census_entry.illiterate, last_name: @federal1860_census_entry.last_name, ldf_vet_or_family: @federal1860_census_entry.ldf_vet_or_family, married_within_year: @federal1860_census_entry.married_within_year, member_of_veteran_family: @federal1860_census_entry.member_of_veteran_family, member_of_veteran_household: @federal1860_census_entry.member_of_veteran_household, middle_initial: @federal1860_census_entry.middle_initial, notes: @federal1860_census_entry.notes, occupation: @federal1860_census_entry.occupation, other: @federal1860_census_entry.other, page_number: @federal1860_census_entry.page_number, personal_estate_owned: @federal1860_census_entry.personal_estate_owned, place_of_birth: @federal1860_census_entry.place_of_birth, post_office: @federal1860_census_entry.post_office, race: @federal1860_census_entry.race, real_estate_owned: @federal1860_census_entry.real_estate_owned, school_within_year: @federal1860_census_entry.school_within_year, sex: @federal1860_census_entry.sex, slaveholder_1860: @federal1860_census_entry.slaveholder_1860, slaveholding_vet_household_1860: @federal1860_census_entry.slaveholding_vet_household_1860, veteran: @federal1860_census_entry.veteran, veteran_or_veteran_family: @federal1860_census_entry.veteran_or_veteran_family, war_experience: @federal1860_census_entry.war_experience, written_page_number: @federal1860_census_entry.written_page_number }
    assert_redirected_to federal1860_census_entry_path(assigns(:federal1860_census_entry))
  end

  test "should destroy federal1860_census_entry" do
    assert_difference('Federal1860CensusEntry.count', -1) do
      delete :destroy, id: @federal1860_census_entry
    end

    assert_redirected_to federal1860_census_entries_path
  end
end
