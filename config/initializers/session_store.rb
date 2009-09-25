# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Referme_session',
  :secret      => 'c3ae0376e4b6818bcd50cb4b3514812c70d9be1434f434fa1a7091f359711e8a5a0a4cca3cd07316d2b344824a81ff9eb5ccf96df1fcb713bab15266d13ce6a9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
