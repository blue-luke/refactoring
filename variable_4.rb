class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    if fancy
      MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: "Welcome to MyProduct, fancy person!" })
    else
      MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: "Welcome to MyProduct" })
    end
  end
end