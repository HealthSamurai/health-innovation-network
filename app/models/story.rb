class Story < ActiveRecord::Base
  def title
    translated_attr(:title)
  end

  def body
    translated_attr(:body)
  end

  protected

  def translated_attr(attr_name)
    send("#{attr_name}_#{I18n.locale}")
  end
end
