def create_email_to(user)
  email = user.email.strip
  mail  = Mail.new(email)
  
  send_email(mail)
end

def send_email(mail)
  mail.send_message
end