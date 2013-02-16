require 'spec_helper'

describe StaticPagesController do
  describe "GET 'home'" do

    it "should be on the home page" do
      get :home
      response.should render_template("static_pages")
    end
  end
end
