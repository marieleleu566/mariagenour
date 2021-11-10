class Contact < MailForm::Base
  attribute :Guest_One_First_Name
  attribute :Guest_One_Surname
  attribute :Guest_Two_First_Name
  attribute :Guest_Two_Surname
  attribute :Children
  attribute :Restrictions
  attribute :Attending
  def headers
    {
      #this is the subject for the email generated, it can be anything you want
      subject: "RSVP",
      to: 'mariagenourcolas@gmail.com',
      from: %("#{:Guest_One_First_Name}", "#{:Guest_One_Surname}"),
      reply_to: %("#{:Guest_One_First_Name}")
      #the from will display the name entered by the user followed by the email
    }
  end
end
