class SolutionRequestMailer < ActionMailer::Base

  default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "request@healthcare-innovation-network.com"

  def new_request(request)
    @request = request

    mail from: request.email, subject: "Solution Request from #{request.email}"
  end

end
