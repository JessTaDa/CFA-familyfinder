class ContactMailer < ApplicationMailer
default from: 'admin@familyfinder.com'
  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: ENV["TADA_EMAIL"], subject: 'New message from website') do |format|
      format.html { render 'send_contact_email'}
          # format.html { render 'send_contact_email' }
          format.text { render 'send_contact_email' }
    end
  end
end
