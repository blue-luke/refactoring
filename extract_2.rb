def tell_browser_type(browser)
  default = "Safari"
  if(browser.type == default)
    puts "You are using the #{default} browser."
  else
    puts "You are using a non-#{default} browser."
  end
end