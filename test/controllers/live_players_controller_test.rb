require 'test_helper'

class LivePlayersControllerTest < ActionController::TestCase
  setup do
    @live_player = live_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:live_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create live_player" do
    assert_difference('LivePlayer.count') do
      post :create, live_player: { Plyr: @live_player.Plyr, Team: @live_player.Team, id: @live_player.id }
    end

    assert_redirected_to live_player_path(assigns(:live_player))
  end

  test "should show live_player" do
    get :show, id: @live_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @live_player
    assert_response :success
  end

  test "should update live_player" do
    patch :update, id: @live_player, live_player: { Plyr: @live_player.Plyr, Team: @live_player.Team, id: @live_player.id }
    assert_redirected_to live_player_path(assigns(:live_player))
  end

  test "should destroy live_player" do
    assert_difference('LivePlayer.count', -1) do
      delete :destroy, id: @live_player
    end

    assert_redirected_to live_players_path
  end
end
