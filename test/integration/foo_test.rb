require 'test_helper'

class FooTest < ActionDispatch::IntegrationTest
  test "faraday rack adapter" do
    # `app` is the Rails application under test
    conn = Faraday.new do |b|
      b.adapter :rack, app
    end

    resp = conn.get '/'
    assert_equal 200, resp.status
    assert_equal 'hello world', resp.body
  end
end
