require 'rails_helper'

describe NumbersController do

  let(:valid_attributes) {{ "first_number" => "2", "second_number" => "75", "guess" => "43" }}

  describe "POST index" do
    it "adds a new Number" do
      expect {
        post :index, {:number => valid_attributes}
      }.to change(Number, :count).by(1)
    end
  end
end
