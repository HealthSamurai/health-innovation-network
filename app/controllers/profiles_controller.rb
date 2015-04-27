class ProfilesController < ApplicationController
  def show
  end

  def update
    redirect_to profile_path, flash: {notice: 'Updated'}
  end
end
