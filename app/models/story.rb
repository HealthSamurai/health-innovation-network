class Story < ActiveRecord::Base
  include ModelTranslations
  translate :title, :body
end
