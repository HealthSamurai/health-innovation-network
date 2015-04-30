class IndexController < ApplicationController
  def index
    @stories = Story.for_landing
  end
end
