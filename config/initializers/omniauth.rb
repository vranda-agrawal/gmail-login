Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, "581990226472-l1l8uqs7p1s4dd5l8nqcmm5mfmgs9epn.apps.googleusercontent.com", "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"
  end
  OmniAuth.config.allowed_request_methods = %i[get]