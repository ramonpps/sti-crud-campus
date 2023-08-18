class NewsletterSubscriptionsController < ApplicationController
    def create
      email = params[:email]
      NewsletterMailer.subscribe_email(email).deliver_now
      redirect_to root_path
    end
  end
  