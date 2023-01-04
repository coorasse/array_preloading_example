# NOTE: this is not an ActiveRecord model
class Restaurant
  def initialize(json)
    @json = json
  end

  def code = @json[:code]
  def name = @json[:name]

  def self.from_api
    [Restaurant.new({ code: 1, name: 'Restaurant 1' }),
     Restaurant.new({ code: 2, name: 'Restaurant 2' }),
     Restaurant.new({ code: 3, name: 'Restaurant 3' })]
  end
end
