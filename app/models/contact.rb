class Contact < MailForm::Base
  attribute :guestonefirstname, validate: true
  attribute :guestonelastname, validate: true
  attribute :guesttwofirstname
  attribute :guesttwolastname
  attribute :children
  attribute :attending
  attribute :message
  def headers
    {
      #this is the subject for the email generated, it can be anything you want
      subject: "RSVP",
      to: 'mariagenourcolas@gmail.com',
      from: %("#{guestonefirstname}" <#{email}>),
      reply_to: %("#{guestonefirstname}" <#{email}>)
      #the from will display the name entered by the user followed by the email
    }
  end
end
