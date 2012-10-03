RSpec.configure do |config|

  config.before(:each) do |example_group|
    DatabaseCleaner.strategy = :truncation
        #if (Capybara.current_driver != :rack_test)
        #                         [:truncation, { except: %w[] }]
        #                       else
        #                         :transaction
        #                       end

    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

end