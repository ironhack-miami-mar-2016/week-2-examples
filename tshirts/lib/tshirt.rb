class Tshirt
  attr_reader :name, :picture_url

  def initialize(name, picture_url)
    @name = name
    @picture_url = picture_url
  end
end
