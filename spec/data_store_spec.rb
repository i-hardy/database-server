require 'data_store'

describe DataStore do
  subject(:datastore) { described_class }
  let(:request) { {"thosecows" => "faraway"} }
  let(:json) { request.to_json }

  describe "#set" do
    it "receives and stores a parameter hash as a JSON object" do
      expect(datastore.set(request)).to eq json
    end
  end

  describe "#get" do
    it "returns the stored JSON object" do
      datastore.set(request)
      expect(datastore.get).to eq json
    end
  end
end
