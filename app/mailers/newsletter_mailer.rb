class NewsletterMailer < ApplicationMailer
    def subscribe_email(email)
      @email = email
      mail(to: email, subject: 'Agradecimento')
    end
  end