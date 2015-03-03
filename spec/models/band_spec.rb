require 'rails_helper'

RSpec.describe Band, type: :model do
  it "must have a name" do
    band = Band.create()
    expect(band).to be_invalid
  end
end
