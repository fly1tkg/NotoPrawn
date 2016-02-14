module NotoPrawn
  module Fonts
    module Methods
      def fallback_fonts(cjk = :sc)
        cjk_fonts(cjk) + not_cjk_fonts
      end

      def not_cjk_fonts
        names - cjk_fonts
      end

      def cjk_fonts(cjk = :sc)
        case cjk
          when :sc
            simplified_chinese_fonts + traditional_chinese_fonts + japanese_fonts + korean_fonts
          when :tc
            traditional_chinese_fonts + simplified_chinese_fonts + japanese_fonts + korean_fonts
          when :jp
            japanese_fonts + traditional_chinese_fonts + simplified_chinese_fonts + korean_fonts
          when :kr
            korean_fonts + japanese_fonts + traditional_chinese_fonts + simplified_chinese_fonts
        end
      end

      def japanese_fonts
        names.find_all {|name| name.include?('NotoSansJP')}
      end

      def traditional_chinese_fonts
        names.find_all {|name| name.include?('NotoSansTC')}
      end

      def simplified_chinese_fonts
        names.find_all {|name| name.include?('NotoSansSC')}
      end

      def korean_fonts
        names.find_all {|name| name.include?('NotoSansKR')}
      end
    end
  end
end