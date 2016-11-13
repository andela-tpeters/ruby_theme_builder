module AbstractFactory
  class ThemeTypeFactory
    def type(type)
      case type
      when :dark
        DarkTheme.new
      else
        LightTheme.new
      end
    end
  end

  class BaseTheme
    attr_accessor :layout, :background_color, :color

    def initialize
      @background_color = "#fff"
      @color = "#000"
    end
  end

  class BaseLayout
    attr_accessor :align,
      :type,
      :topbar,
      :jumbotron,
      :show_sidebar,
      :sidebar_position,
      :show_jumbotron

    def initialize
      @align = :full
      @topbar = :relative
      @jumbotron = :full
      @show_sidebar = true
      @sidebar_position = :left
      @show_jumbotron = true
    end
  end

  class LayoutFactory
    def type(name)
      case name
      when :centralized
        CentralizedLayout.new
      when :fullwidth
        FullwidthLayout.new
      else
        FullwidthLayout.new
      end
    end
  end
end
