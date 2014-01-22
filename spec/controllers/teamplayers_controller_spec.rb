require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TeamplayersController do

  # This should return the minimal set of attributes required to create a valid
  # Teamplayer. As you add validations to Teamplayer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "playerid" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TeamplayersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all teamplayers as @teamplayers" do
      teamplayer = Teamplayer.create! valid_attributes
      get :index, {}, valid_session
      assigns(:teamplayers).should eq([teamplayer])
    end
  end

  describe "GET show" do
    it "assigns the requested teamplayer as @teamplayer" do
      teamplayer = Teamplayer.create! valid_attributes
      get :show, {:id => teamplayer.to_param}, valid_session
      assigns(:teamplayer).should eq(teamplayer)
    end
  end

  describe "GET new" do
    it "assigns a new teamplayer as @teamplayer" do
      get :new, {}, valid_session
      assigns(:teamplayer).should be_a_new(Teamplayer)
    end
  end

  describe "GET edit" do
    it "assigns the requested teamplayer as @teamplayer" do
      teamplayer = Teamplayer.create! valid_attributes
      get :edit, {:id => teamplayer.to_param}, valid_session
      assigns(:teamplayer).should eq(teamplayer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Teamplayer" do
        expect {
          post :create, {:teamplayer => valid_attributes}, valid_session
        }.to change(Teamplayer, :count).by(1)
      end

      it "assigns a newly created teamplayer as @teamplayer" do
        post :create, {:teamplayer => valid_attributes}, valid_session
        assigns(:teamplayer).should be_a(Teamplayer)
        assigns(:teamplayer).should be_persisted
      end

      it "redirects to the created teamplayer" do
        post :create, {:teamplayer => valid_attributes}, valid_session
        response.should redirect_to(Teamplayer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved teamplayer as @teamplayer" do
        # Trigger the behavior that occurs when invalid params are submitted
        Teamplayer.any_instance.stub(:save).and_return(false)
        post :create, {:teamplayer => { "playerid" => "invalid value" }}, valid_session
        assigns(:teamplayer).should be_a_new(Teamplayer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Teamplayer.any_instance.stub(:save).and_return(false)
        post :create, {:teamplayer => { "playerid" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested teamplayer" do
        teamplayer = Teamplayer.create! valid_attributes
        # Assuming there are no other teamplayers in the database, this
        # specifies that the Teamplayer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Teamplayer.any_instance.should_receive(:update).with({ "playerid" => "MyString" })
        put :update, {:id => teamplayer.to_param, :teamplayer => { "playerid" => "MyString" }}, valid_session
      end

      it "assigns the requested teamplayer as @teamplayer" do
        teamplayer = Teamplayer.create! valid_attributes
        put :update, {:id => teamplayer.to_param, :teamplayer => valid_attributes}, valid_session
        assigns(:teamplayer).should eq(teamplayer)
      end

      it "redirects to the teamplayer" do
        teamplayer = Teamplayer.create! valid_attributes
        put :update, {:id => teamplayer.to_param, :teamplayer => valid_attributes}, valid_session
        response.should redirect_to(teamplayer)
      end
    end

    describe "with invalid params" do
      it "assigns the teamplayer as @teamplayer" do
        teamplayer = Teamplayer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Teamplayer.any_instance.stub(:save).and_return(false)
        put :update, {:id => teamplayer.to_param, :teamplayer => { "playerid" => "invalid value" }}, valid_session
        assigns(:teamplayer).should eq(teamplayer)
      end

      it "re-renders the 'edit' template" do
        teamplayer = Teamplayer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Teamplayer.any_instance.stub(:save).and_return(false)
        put :update, {:id => teamplayer.to_param, :teamplayer => { "playerid" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested teamplayer" do
      teamplayer = Teamplayer.create! valid_attributes
      expect {
        delete :destroy, {:id => teamplayer.to_param}, valid_session
      }.to change(Teamplayer, :count).by(-1)
    end

    it "redirects to the teamplayers list" do
      teamplayer = Teamplayer.create! valid_attributes
      delete :destroy, {:id => teamplayer.to_param}, valid_session
      response.should redirect_to(teamplayers_url)
    end
  end

end