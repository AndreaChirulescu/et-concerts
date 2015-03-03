require 'rails_helper'

RSpec.describe BandsController, type: :controller do
  it "can show a list of bands" do
    Band.create(:name => "test1", :country => "country 1");
    Band.create(:name => "test2", :country => "country 2");
    Band.create(:name => "test3", :country => "country 3");
    Band.create(:name => "test4", :country => "country 4");

    get :index

    expect(page).to contain("test1");
  end
end
