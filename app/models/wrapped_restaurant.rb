# NOTE: this is not an ActiveRecord model
class Restaurant
  def initialize(json)
    @json = json
  end

  def id = @json[:id]
  def name = @json[:name]

  def self.from_api
    [Restaurant.new({ id: 1, name: 'Restaurant 1' }),
     Restaurant.new({ id: 2, name: 'Restaurant 2' }),
     Restaurant.new({ id: 3, name: 'Restaurant 3' })]
  end
end
