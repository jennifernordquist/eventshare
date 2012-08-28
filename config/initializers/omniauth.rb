FACEBOOK_CONFIG = YAML.load_file("#{Rails.root}/config/facebook.yml")

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, FACEBOOK_CONFIG["id"], FACEBOOK_CONFIG["secret"]
end
