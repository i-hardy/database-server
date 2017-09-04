describe 'Database Server App' do
  def app
    DatabaseServer.new
  end

  it "can receive a post request" do
    post '/set'
    expect(last_response).to be_ok
  end

  it "can store a key-value pair of params" do
    post '/set?somekey=somevalue'
    expect(last_response).to be_ok
  end
end
