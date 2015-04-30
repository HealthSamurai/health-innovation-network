class SolutionRequestMailer < ActionMailer::Base

  default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "request@healthcare-innovation-network.com"

  def new_request(request)
    @request = request

    mail from: request.email, subject: "Request for Solutions from #{request.email}"
  end

end
