# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sunspot-example-project_session',
  :secret      => 'd7851b77518ff54b63ed5e708c009d960d5980ce761a044067bc611d26c841b6fd0a4153ffc6c7d2ffe1dca626f5e5cd54155c29c069aa6250e5adfd99b2056e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
