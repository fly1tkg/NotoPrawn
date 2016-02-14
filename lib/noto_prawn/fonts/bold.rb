require 'noto_prawn/fonts/methods'

module NotoPrawn
  module Fonts
    class Bold
      extend Methods

      @@fonts = {}

      Dir.glob(File.expand_path('../bold/*.ttf', __FILE__)) do |font_file|
        filename = File.basename font_file, '.ttf'
        @@fonts[filename] = File.absolute_path(font_file)
      end

      class << self
        def names
          @@fonts.keys
        end

        def path(fontname)
          @@fonts[fontname]
        end
      end
    end
  end
end