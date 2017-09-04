describe 'Database Server App' do
  let(:params) { "thosecows=faraway" }
  let(:hash) { {"thosecows" => "faraway"} }

  def app
    DatabaseServer.new
  end

  describe "POST /set" do
    it "can receive a key-value pair of params" do
      post "/set?#{params}"
      expect(last_response).to be_ok
    end

    it "passes the params received into the model" do
      expect(DataStore).to receive(:set).with(hash)
      post "/set?#{params}"
    end
  end

  describe "GET /get" do
    it "can respond to a get request on /get" do
      get "/get"
      expect(last_response).to be_ok
    end

    it "responds with the last posted params as a JSON object" do
      post "/set?#{params}"
      get "/get"
      expect(last_response.body).to eq hash.to_json
    end
  end
end
