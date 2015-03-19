module ModelTranslations
  extend ActiveSupport::Concern

  class_methods do
    def translate(*attributes)
      @@translate_attributes = attributes
    end

    def translate_attributes
      @@translate_attributes
    end
  end

  def create_method(name, &block)
    self.class.send(:define_method, name, &block)
  end

  def method_missing(m, *args, &block)
    attr = m.to_sym
    if self.class.translate_attributes.include? attr
      ["#{attr}_ru", "#{attr}_en"].each do |localized_attr|
        unless self.class.columns_hash.key? localized_attr
          raise ArgumentError, "Unknown attribute #{localized_attr.inspect} for class #{self.class.name}"
        end
      end

      create_method attr do
        send("#{attr}_#{I18n.locale}")
      end

      create_method "#{attr}=" do |new_value|
        raise RuntimeError, "Do not use #{self.class.name}##{attr}=, use ##{attr}_en= or ##{attr}_ru= instead"
      end
      send(attr)
    else
      super
    end
  end
end
