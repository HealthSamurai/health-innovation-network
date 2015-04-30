class StoriesController < ApplicationController
  before_filter :find_story, only: [:show, :edit, :update, :destroy]
  before_filter :is_permited?, only: [:update, :edit, :destroy]

  def index
    @stories = Story.order('updated_at DESC').all
  end

  def new
    @story = Story.new
  end

  def show
  end

  def edit
  end

  def destroy
    @story.destroy
    redirect_to stories_path, flash: {notice: 'Story was removed'}
  end

  def update
    attrs = params.require(:story).permit!
    @story.attributes = attrs
    @story.save
    if @story.errors.empty?
      redirect_to story_path(@story), flash: {notice: 'Story was updated'}
    else
      render :edit
    end
  end

  def create
    attrs = params.require(:story).permit!
    @story = Story.new(attrs)
    @story.user = current_user
    @story.save
    if @story.errors.empty?
      redirect_to stories_path, flash: {notice: 'Story was created'}
    else
      render :new
    end
  end

  protected

  def find_story
    @story = Story.find(params[:id])
  end

  def is_permited?
    unless current_user and (current_user.admin or current_user == @story.user)
      raise ActionController::RoutingError.new('Forbidden')
    end
  end
end
