class SolutionRequestsController < ApplicationController

  def new
    @request = SolutionRequest.new
  end

  def create
    @request = SolutionRequest.new(solution_request_params)

    if @request.valid?
      SolutionRequestMailer.new_request(@request).deliver
      redirect_to request_for_solutions_path, notice: "Your request has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

private

  def solution_request_params
    params.require(:solution_request).permit(:name, :email, :subject, :message)
  end

end
