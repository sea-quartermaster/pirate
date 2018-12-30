LookOut.configure do |config|
  config.api_key = '123'
  config.env = Rails.env
  config.repo = 'sea-aye/pirate'
  config.user = `git config user.name`.chomp
end
