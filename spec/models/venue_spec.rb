require 'rails_helper'

RSpec.describe Venue, type: :model do
  it "must have a name" do
    venue = Venue.create(:city => "Ås", :country => "Klappeland")
    expect(venue).to be_invalid
  end

  it "must have a city" do
    venue = Venue.create(:name => "Stugu")
    expect(venue).to be_invalid
  end

  it "must have a country" do
    venue = Venue.create(:name => "Stugu", :city => "Ås")
    expect(venue).to be_invalid
  end
end
