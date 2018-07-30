# Preview all emails at http://localhost:3000/rails/mailers/customer_mailer
class CustomerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/customer_mailer/registration_confirmation
  def registration_confirmation
    CustomerMailer.registration_confirmation
  end

end
