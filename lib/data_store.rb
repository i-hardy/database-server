class DataStore
  def self.set(params)
    @data ||= []
    @data << params
  end

  def self.get(key)
    @data.find { |hash| hash[key] }[key]
  end
end
