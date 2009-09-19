# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_daregood_session',
  :secret      => '278f3d61bd60fc0e1c1115a20f7063c81f672c6ec35105e8be70850bc42e2711d1c77bef33f4f6b33013e3764cbb8fd4d1dd72c16a54925543995fc2ea225fcc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
