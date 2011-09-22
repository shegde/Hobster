Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'RatoMKzVUMq9mFeR4XEhFw', 'QKvFjj4Th111zLBxK4zS5KxvdThuewQRBEmbFe4Mng'
  provider :facebook, '259787160728620', '0cb284ff40c86eb83096f51300da432b'
  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end