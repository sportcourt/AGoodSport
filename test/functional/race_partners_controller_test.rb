require 'test_helper'

class RacePartnersControllerTest < ActionController::TestCase
  setup do
    @race_partner = race_partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:race_partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race_partner" do
    assert_difference('RacePartner.count') do
      post :create, race_partner: { available_slots: @race_partner.available_slots, charity_id: @race_partner.charity_id, donation_amount: @race_partner.donation_amount, race_id: @race_partner.race_id, total_slots: @race_partner.total_slots }
    end

    assert_redirected_to race_partner_path(assigns(:race_partner))
  end

  test "should show race_partner" do
    get :show, id: @race_partner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @race_partner
    assert_response :success
  end

  test "should update race_partner" do
    put :update, id: @race_partner, race_partner: { available_slots: @race_partner.available_slots, charity_id: @race_partner.charity_id, donation_amount: @race_partner.donation_amount, race_id: @race_partner.race_id, total_slots: @race_partner.total_slots }
    assert_redirected_to race_partner_path(assigns(:race_partner))
  end

  test "should destroy race_partner" do
    assert_difference('RacePartner.count', -1) do
      delete :destroy, id: @race_partner
    end

    assert_redirected_to race_partners_path
  end
end
