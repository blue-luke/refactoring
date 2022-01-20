def tell_browser_type(browser)
  browser_type_is_safari = browser.type == "Safari"
  safari_message = "You are using the Safari browser."
  not_safari_message = "You are using a non-Safari browser."

  browser_type_is_safari ? puts safari_message : puts not_safari_message
end