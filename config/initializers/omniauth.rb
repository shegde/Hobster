Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'RatoMKzVUMq9mFeR4XEhFw', 'QKvFjj4Th111zLBxK4zS5KxvdThuewQRBEmbFe4Mng'
  provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end