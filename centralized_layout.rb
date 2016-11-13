class CentralizedLayout < AbstractFactory::BaseLayout
  def initialize
    super
    @align = :container
  end
end