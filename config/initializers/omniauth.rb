Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'Ud68A7VroAkU38pN0W9QDQ', '9MfI3FBqsyrkVPJ9DfJu5bKqM6V0W0IssFY2WX65JXo'
  provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end