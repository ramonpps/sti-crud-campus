class Mailer < ApplicationMailer
    def novidades_email(email)
      mail(to: email, subject: 'Novidades do Sistema')
    end
  end
  