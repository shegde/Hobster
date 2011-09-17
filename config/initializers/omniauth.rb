Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '17w4I26rFmIImWruVg6Wgg', 'f4rdc5tcheccZIlMaUnSLpapj1nJ9IIkDSiq1Lt8'
  provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end