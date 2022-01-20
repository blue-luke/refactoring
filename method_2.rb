def tell_browser_type(browser)
  default == "Safari"
  browser_type_is_safari = browser.type == default

  print_message(browser_type_is_safari, default)
end

def print_message(is_safari, default)
  safari_message = "You are using the #{default} browser."
  not_safari_message = "You are using a non-#{default} browser."

  is_safari ? safari_message : not_safari_message
end