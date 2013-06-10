class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  def contact_message(contact)
    @contact = contact

    mail to: "appymltest@gmail.com", subject: "Contact From Blog"
  end
end
