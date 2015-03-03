require 'rails_helper'

RSpec.describe Concert, type: :model do
  it "must have at least one band" do
    concert = Concert.create()
    expect(concert).to be_invalid

    concert.bands << Band.create(:name => "Tullebukkene", :country => "Østerdalen")
    expect(concert).to be_valid
  end

  it "can have more than one band" do
    concert = Concert.create()
    concert.bands << Band.create(:name => "Daff", :country => "Slapp")
    concert.bands << Band.create(:name => "Sufiene", :country => "Midtøsten")
    concert.bands << Band.create(:name => "Sufiane", :country => "Midtøsten")
    concert.bands << Band.create(:name => "Sufienene", :country => "Midtøsten")

    expect(concert).to be_valid
  end
end
