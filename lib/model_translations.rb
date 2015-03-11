module ModelTranslations
  extend ActiveSupport::Concern

  class_methods do
    def translate(*attributes)
      attributes.each do |attr|
        ["#{attr}_ru", "#{attr}_en"].each do |localized_attr|
          unless self.columns_hash.key? localized_attr
            raise ArgumentError, "Unknown attribute #{localized_attr.inspect} for class #{name}"
          end
        end

        define_method attr do
          send("#{attr}_#{I18n.locale}")
        end

        define_method "#{attr}=" do |new_value|
          raise RuntimeError, "Do not use #{self.class.name}##{attr}=, use ##{attr}_en= or ##{attr}_ru= instead"
        end
      end
    end
  end
end
