def send_email_to(user)
  formatted_email = user.email.strip
  Mail.new(formatted_email).send_message
end