require 'i18n'

module I18n
  module Backend
    class Flat < Simple
      def store_translations(key, translations, options = {})
        keys = key.split('.')

        translations.each do |locale, value|
          data = {}

          keys.each_with_index.inject(data) do |hash, (sub_key, index)|
            hash[sub_key] =
              if index == keys.size - 1
                value
              else
                {}
              end
          end

          super(locale, data, options = {})
        end
      end
    end
  end
end
