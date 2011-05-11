# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_holygrail_rails23_session',
  :secret      => '9fdd0a86b4cb0a9ec55643e6247d62db315dae4c680afafc477bd9e8f8c008385d368d3e02b089ffef0abdec3380603633dec3477ab2cb3f44413e48de72cbf3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
