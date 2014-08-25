class ContactUsMailer < ActionMailer::Base
  default to: "contact@codemalaysia.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_us_mailer.teacher_request.subject
  #
  def request_mail(from_email, content_body, requestor_type)
    @content= content_body
    @sender = from_email
    @requestor_type = requestor_type
    mail from: from_email, to: 'contact@codemalaysia.com', subject: 'test'
  end

end
