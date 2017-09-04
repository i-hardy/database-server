class DataStore
  def self.set(params)
    @data = params.to_json
  end

  def self.get
    @data
  end
end
