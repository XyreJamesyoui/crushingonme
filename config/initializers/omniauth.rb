OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1102359449835622', '51402a49edd2900460b0894740ed4d03', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end