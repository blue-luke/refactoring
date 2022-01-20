class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
    @url = "http://mixmax.com"
    @api_key = "f20506xx808c"
    @plain_greeting = "Welcome to MyProduct"
    @fancy_greeting = "Welcome to MyProduct, fancy person!"
  end

  def send_message
    if fancy
      MailServer.connect(@url, api_key: @api_key).send_message({ to: @email, body: "#{@fancy_greeting}" })
    else
      MailServer.connect(@url, api_key: @api_key).send_message({ to: @email, body: "#{@plain_greeting}" })
    end
  end
end