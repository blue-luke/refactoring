# Understands sanitising a user's email
class Sanitiser
  def sanitise(user, email)
    user.email.strip
  end
end