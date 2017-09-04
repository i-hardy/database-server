class DataStore
  def self.set(params)
    @data = params
  end

  def self.get
    @data.to_json
  end
end
