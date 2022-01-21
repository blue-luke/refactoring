def send_correct_page(browser, window)
  default = "Safari"
  threshold_size = 768

  browser_type_is_safari = browser.type == default
  window_size_is_small = window.size < threshold_size

  browser_type_is_safari && window_size_is_small ? generate_message(1) : generate_message(2)
end

def generate_message(type)
  if type == 1
    "You are using the Safari browser in a small window."
  elsif type == 2
    "You are not using the Safari browser or have a big window."
  end
end