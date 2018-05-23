require 'prawn'

class Prawn::Document
  def set_noto_sans_regular(cjk = :sc)
    unless @noto_sans_regular_installed
      NotoPrawn::Fonts::Regular.names.each do |name|
        font_families.update(name => { normal: NotoPrawn::Fonts::Regular.path(name) })
      end
      @noto_sans_regular_installed = true
    end

    font('NotoSans-Regular')
    fallback_fonts(NotoPrawn::Fonts::Regular.fallback_fonts(cjk))
  end

  def set_noto_sans_bold(cjk = :sc)
    unless @noto_sans_bold_installed
      NotoPrawn::Fonts::Bold.names.each do |name|
        font_families.update(name => { bold: NotoPrawn::Fonts::Bold.path(name) })
      end
      @noto_sans_bold_installed = true
    end

    font('NotoSans-Bold')
    fallback_fonts(NotoPrawn::Fonts::Bold.fallback_fonts(cjk))
  end
end
