class IndexController < ApplicationController
  def index
    @last_story = Story.last
  end
end
