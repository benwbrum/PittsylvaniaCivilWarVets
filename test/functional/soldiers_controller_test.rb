require 'test_helper'

class SoldiersControllerTest < ActionController::TestCase
  setup do
    @soldier = soldiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:soldiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soldier" do
    assert_difference('Soldier.count') do
      post :create, soldier: { awol: @soldier.awol, cause_of_wartime_death: @soldier.cause_of_wartime_death, children_1870: @soldier.children_1870, company: @soldier.company, death: @soldier.death, discharge: @soldier.discharge, enlistment: @soldier.enlistment, enlistment_age: @soldier.enlistment_age, federal1860_census_entry_id: @soldier.federal1860_census_entry_id, federal1870_census_entry_id: @soldier.federal1870_census_entry_id, federal1870_family_member_id: @soldier.federal1870_family_member_id, id: @soldier.id, moved_away: @soldier.moved_away, name: @soldier.name, not_ill: @soldier.not_ill, notes: @soldier.notes, notes_regt: @soldier.notes_regt, other_family_members_1870: @soldier.other_family_members_1870, pensioner: @soldier.pensioner, postwar_info: @soldier.postwar_info, pow: @soldier.pow, prewar_jobs: @soldier.prewar_jobs, promotions_or_other_jobs: @soldier.promotions_or_other_jobs, rank: @soldier.rank, regiment: @soldier.regiment, sutherlin_interactions: @soldier.sutherlin_interactions, wife_1870: @soldier.wife_1870, wounding_or_illness: @soldier.wounding_or_illness }
    end

    assert_redirected_to soldier_path(assigns(:soldier))
  end

  test "should show soldier" do
    get :show, id: @soldier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @soldier
    assert_response :success
  end

  test "should update soldier" do
    put :update, id: @soldier, soldier: { awol: @soldier.awol, cause_of_wartime_death: @soldier.cause_of_wartime_death, children_1870: @soldier.children_1870, company: @soldier.company, death: @soldier.death, discharge: @soldier.discharge, enlistment: @soldier.enlistment, enlistment_age: @soldier.enlistment_age, federal1860_census_entry_id: @soldier.federal1860_census_entry_id, federal1870_census_entry_id: @soldier.federal1870_census_entry_id, federal1870_family_member_id: @soldier.federal1870_family_member_id, id: @soldier.id, moved_away: @soldier.moved_away, name: @soldier.name, not_ill: @soldier.not_ill, notes: @soldier.notes, notes_regt: @soldier.notes_regt, other_family_members_1870: @soldier.other_family_members_1870, pensioner: @soldier.pensioner, postwar_info: @soldier.postwar_info, pow: @soldier.pow, prewar_jobs: @soldier.prewar_jobs, promotions_or_other_jobs: @soldier.promotions_or_other_jobs, rank: @soldier.rank, regiment: @soldier.regiment, sutherlin_interactions: @soldier.sutherlin_interactions, wife_1870: @soldier.wife_1870, wounding_or_illness: @soldier.wounding_or_illness }
    assert_redirected_to soldier_path(assigns(:soldier))
  end

  test "should destroy soldier" do
    assert_difference('Soldier.count', -1) do
      delete :destroy, id: @soldier
    end

    assert_redirected_to soldiers_path
  end
end
