class DataStore
  def self.set(params)
    @data ||= []
    @data << params
  end

  def self.get(params)
    @data.find { |hash| hash[params["key"]] }[params["key"]]
  end
end
