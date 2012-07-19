require "bundler/setup"
require "rspec/core"

RSpec.configure do |config|
  config.mock_framework = :mocha
end

describe "mocking" do
  it "foo" do
    o = mock
    o.expects(:foo)
  end
end
