class SubscriptionsController < ApplicationController
  def subscribe
    email = params[:email]
    if email.present?
      ::Mailer.novidades_email(email).deliver_now
      flash[:notice] = 'Um email de confirmação foi enviado para o seu endereço.'
    else
      flash[:alert] = 'Por favor, insira um endereço de email válido.'
    end
    redirect_to root_path
  end
end