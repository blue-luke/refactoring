class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message
    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
    base_body = "Welcome to MyProduct"

    

    mail_server.send_message({ to: @email, body: base_body })
  end

  def message_body(fancy)
    @fancy ? "#{ base_body }, fancy person!" : base_body
  end
end

