class ContactUs < ActionMailer::Base
  default to: "contact@codemalaysia.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_us.send_teacher_information.subject
  #
  def send_teacher_information(contact_us_mail)
    @greeting = "Hi"

    mail from:  contact_us_mail[:from_email]
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_us.send_project_owner_information.subject
  #
  def send_project_owner_information(contact_us_mail)
    @greeting = "Hi"

    mail from: contact_us_mail[:from_email]
  end
end
