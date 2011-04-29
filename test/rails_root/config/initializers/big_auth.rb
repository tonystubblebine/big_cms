BigAuth.setup do |config|
  # config.default_role = "pending"

  # ==> Twitter
  # config.twitter 'APP_KEY', 'APP_SECRET'
  
  # ==> Facebook
  # Register your Facebook app here: http://developers.facebook.com/
  # If you're having problems on Ubuntu, add 
  # :client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}} 
  # to the end of the following line. More info on this here:
  # http://stackoverflow.com/questions/3977303/omniauth-facebook-certificate-verify-failed/5512518#5512518
  # config.facebook 'APP_KEY', 'APP_SECRET', :scope => 'publish_stream'
  
  if Rails.env.production?
    
    # Configs for production mode go here
    
  elsif Rails.env.development?
    
    # Configs for development mode go here
    
  end
  
end
