require 'data_store'

describe DataStore do
  subject(:datastore) { described_class }
  let(:request1) { {"thosecows" => "faraway"} }
  let(:request2) { "thosecows" }

  describe "#set" do
    it "receives and stores a parameter hash in an array" do
      expect(datastore.set(request1)).to include request1
    end
  end

  describe "#get" do
    it "returns the value associated with a hash key" do
      datastore.set(request1)
      expect(datastore.get(request2)).to eq request1["thosecows"]
    end
  end
end
