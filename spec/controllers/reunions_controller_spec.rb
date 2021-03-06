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

describe ReunionsController do

  # This should return the minimal set of attributes required to create a valid
  # Reunion. As you add validations to Reunion, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "date" => "2013-03-06 15:52:48" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReunionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all reunions as @reunions" do
      reunion = Reunion.create! valid_attributes
      get :index, {}, valid_session
      assigns(:reunions).should eq([reunion])
    end
  end

  describe "GET show" do
    it "assigns the requested reunion as @reunion" do
      reunion = Reunion.create! valid_attributes
      get :show, {:id => reunion.to_param}, valid_session
      assigns(:reunion).should eq(reunion)
    end
  end

  describe "GET new" do
    it "assigns a new reunion as @reunion" do
      get :new, {}, valid_session
      assigns(:reunion).should be_a_new(Reunion)
    end
  end

  describe "GET edit" do
    it "assigns the requested reunion as @reunion" do
      reunion = Reunion.create! valid_attributes
      get :edit, {:id => reunion.to_param}, valid_session
      assigns(:reunion).should eq(reunion)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Reunion" do
        expect {
          post :create, {:reunion => valid_attributes}, valid_session
        }.to change(Reunion, :count).by(1)
      end

      it "assigns a newly created reunion as @reunion" do
        post :create, {:reunion => valid_attributes}, valid_session
        assigns(:reunion).should be_a(Reunion)
        assigns(:reunion).should be_persisted
      end

      it "redirects to the created reunion" do
        post :create, {:reunion => valid_attributes}, valid_session
        response.should redirect_to(Reunion.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reunion as @reunion" do
        # Trigger the behavior that occurs when invalid params are submitted
        Reunion.any_instance.stub(:save).and_return(false)
        post :create, {:reunion => { "date" => "invalid value" }}, valid_session
        assigns(:reunion).should be_a_new(Reunion)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Reunion.any_instance.stub(:save).and_return(false)
        post :create, {:reunion => { "date" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested reunion" do
        reunion = Reunion.create! valid_attributes
        # Assuming there are no other reunions in the database, this
        # specifies that the Reunion created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Reunion.any_instance.should_receive(:update_attributes).with({ "date" => "2013-03-06 15:52:48" })
        put :update, {:id => reunion.to_param, :reunion => { "date" => "2013-03-06 15:52:48" }}, valid_session
      end

      it "assigns the requested reunion as @reunion" do
        reunion = Reunion.create! valid_attributes
        put :update, {:id => reunion.to_param, :reunion => valid_attributes}, valid_session
        assigns(:reunion).should eq(reunion)
      end

      it "redirects to the reunion" do
        reunion = Reunion.create! valid_attributes
        put :update, {:id => reunion.to_param, :reunion => valid_attributes}, valid_session
        response.should redirect_to(reunion)
      end
    end

    describe "with invalid params" do
      it "assigns the reunion as @reunion" do
        reunion = Reunion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Reunion.any_instance.stub(:save).and_return(false)
        put :update, {:id => reunion.to_param, :reunion => { "date" => "invalid value" }}, valid_session
        assigns(:reunion).should eq(reunion)
      end

      it "re-renders the 'edit' template" do
        reunion = Reunion.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Reunion.any_instance.stub(:save).and_return(false)
        put :update, {:id => reunion.to_param, :reunion => { "date" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reunion" do
      reunion = Reunion.create! valid_attributes
      expect {
        delete :destroy, {:id => reunion.to_param}, valid_session
      }.to change(Reunion, :count).by(-1)
    end

    it "redirects to the reunions list" do
      reunion = Reunion.create! valid_attributes
      delete :destroy, {:id => reunion.to_param}, valid_session
      response.should redirect_to(reunions_url)
    end
  end

end
