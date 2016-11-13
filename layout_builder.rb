class LayoutBuilder < AbstractFactory::LayoutFactory
  def self.build(type)
    builder = new(type || :fullwidth)
    yield(builder)
    builder.layout
  end

  def initialize(type)
    @layout = type type
  end

  def topbar(fixed)
    @layout.topbar = fixed || @layout.topbar
  end

  def jumbotron(full)
    @layout.jumbotron = full || @layout.jumbotron
  end

  def show_sidebar(status)
    @layout.show_sidebar = status
  end

  def show_jumbotron(status)
    @layout.show_jumbotron = status
  end

  def sidebar_position(side)
    @layout.sidebar_position = side || @layout.sidebar_position
  end

  def layout
    @layout
  end
end
