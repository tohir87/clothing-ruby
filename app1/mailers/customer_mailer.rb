class CustomerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.registration_confirmation.subject
  #
  def registration_confirmation(customer)
    @customer = customer

    mail to: @customer.email, subject: "Registration Confirmation"
  end
end
