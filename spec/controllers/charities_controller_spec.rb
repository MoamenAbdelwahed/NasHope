require 'rails_helper'

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

RSpec.describe CharitiesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Charity. As you add validations to Charity, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CharitiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all charities as @charities" do
      charity = Charity.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:charities)).to eq([charity])
    end
  end

  describe "GET show" do
    it "assigns the requested charity as @charity" do
      charity = Charity.create! valid_attributes
      get :show, {:id => charity.to_param}, valid_session
      expect(assigns(:charity)).to eq(charity)
    end
  end

  describe "GET new" do
    it "assigns a new charity as @charity" do
      get :new, {}, valid_session
      expect(assigns(:charity)).to be_a_new(Charity)
    end
  end

  describe "GET edit" do
    it "assigns the requested charity as @charity" do
      charity = Charity.create! valid_attributes
      get :edit, {:id => charity.to_param}, valid_session
      expect(assigns(:charity)).to eq(charity)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Charity" do
        expect {
          post :create, {:charity => valid_attributes}, valid_session
        }.to change(Charity, :count).by(1)
      end

      it "assigns a newly created charity as @charity" do
        post :create, {:charity => valid_attributes}, valid_session
        expect(assigns(:charity)).to be_a(Charity)
        expect(assigns(:charity)).to be_persisted
      end

      it "redirects to the created charity" do
        post :create, {:charity => valid_attributes}, valid_session
        expect(response).to redirect_to(Charity.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved charity as @charity" do
        post :create, {:charity => invalid_attributes}, valid_session
        expect(assigns(:charity)).to be_a_new(Charity)
      end

      it "re-renders the 'new' template" do
        post :create, {:charity => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested charity" do
        charity = Charity.create! valid_attributes
        put :update, {:id => charity.to_param, :charity => new_attributes}, valid_session
        charity.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested charity as @charity" do
        charity = Charity.create! valid_attributes
        put :update, {:id => charity.to_param, :charity => valid_attributes}, valid_session
        expect(assigns(:charity)).to eq(charity)
      end

      it "redirects to the charity" do
        charity = Charity.create! valid_attributes
        put :update, {:id => charity.to_param, :charity => valid_attributes}, valid_session
        expect(response).to redirect_to(charity)
      end
    end

    describe "with invalid params" do
      it "assigns the charity as @charity" do
        charity = Charity.create! valid_attributes
        put :update, {:id => charity.to_param, :charity => invalid_attributes}, valid_session
        expect(assigns(:charity)).to eq(charity)
      end

      it "re-renders the 'edit' template" do
        charity = Charity.create! valid_attributes
        put :update, {:id => charity.to_param, :charity => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested charity" do
      charity = Charity.create! valid_attributes
      expect {
        delete :destroy, {:id => charity.to_param}, valid_session
      }.to change(Charity, :count).by(-1)
    end

    it "redirects to the charities list" do
      charity = Charity.create! valid_attributes
      delete :destroy, {:id => charity.to_param}, valid_session
      expect(response).to redirect_to(charities_url)
    end
  end

end
