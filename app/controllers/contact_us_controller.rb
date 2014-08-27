class ContactUsController < ApplicationController
  def form_page
    valid_pages = %w(general collaborate startup)

    the_page = params[:form_page]
    if valid_pages.include?(the_page)
      render params[:form_page]
    else
      redirect_to root_path
    end
  end

  def create
    email = params[:request][:email]
    requestor_type = params[:request][:requestor]
    body = params[:request][:body]
    if validate_email(email)
      if ContactUsMailer.request_mail(email, body, requestor_type).deliver
        the_notice = "Successfully emailed your request to the Codemalaysia team"
      else
        the_notice = "Failed to send email"
      end
    else
        the_notice = "Invalid Email Address"
    end
    redirect_to root_path
  end

  def validate_email(email)
    return email.include?('@')
  end
end
