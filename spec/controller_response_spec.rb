describe 'Database Server App' do
  let(:post_params) { "thosecows=faraway" }
  let(:get_params) { "key=thosecows" }
  let(:hash) { {"thosecows" => "faraway"} }

  def app
    DatabaseServer.new
  end

  describe "POST /set" do
    it "passes the params received into the model" do
      expect(DataStore).to receive(:set).with(hash)
      post "/set?#{post_params}"
    end
  end

  describe "GET /get" do
    it "responds with the last posted params as a JSON object" do
      post "/set?#{post_params}"
      get "/get?#{get_params}"
      expect(last_response.body).to eq hash["thosecows"]
    end
  end
end
