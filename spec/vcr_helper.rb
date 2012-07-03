VCR.configure do |config|
  config.cassette_library_dir = "fixtures/cassettes"
  config.stub_with :webmock
end
