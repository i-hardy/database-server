require 'data_store'

describe DataStore do
  subject(:datastore) { described_class }
  let(:request) { {"thosecows" => "faraway"} }

  describe "#set" do
    it "receives and stores a hash" do
      expect(datastore.set(request)).to eq request
    end
  end

  describe "#get" do
    it "returns the stored hash as a JSON object" do
      datastore.set(request)
      expect(datastore.get).to eq request.to_json
    end
  end
end
