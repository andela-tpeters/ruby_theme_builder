class ThemeFactory < AbstractFactory::ThemeTypeFactory
  def initialize(type, options = {})
    @theme = type(type)
    layout(options)
  end

  def layout(options = {})
    @theme.layout = LayoutBuilder.build options[:type] do |builder|
      builder.topbar options[:topbar]
      builder.jumbotron options[:jumbotron]
      builder.sidebar_position options[:sidebar_position]
      builder.show_sidebar options[:show_sidebar]
      builder.show_jumbotron options[:show_jumbotron]
    end
  end

  def theme
    @theme
  end
end
