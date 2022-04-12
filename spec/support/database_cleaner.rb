RSpec.configure do |config|
  # Before run test suite anything present in DB is cleaned
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  # Before normal tests are run (non-JS) - run in a transaction
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  # For every JS test run truncation
  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  # Before each test we run DB cleaner
  config.before(:each) do
    DatabaseCleaner.start
  end

  # After each test we clean out the DB
  config.after(:each) do
    DatabaseCleaner.clean
  end
end
