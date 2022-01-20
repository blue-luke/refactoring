def send_correct_page(browser, window)
  default = "Safari"
  size_threshold = 768

  if(browser.type == default && window.size < size_threshold)
    return "You are using the #{default} browser in a small window."
  else
    return "You are not using the #{default} browser or have a big window."
  end
end