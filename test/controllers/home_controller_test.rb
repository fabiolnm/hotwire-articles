require "test_helper"

describe HomeController do
  it "must get index" do
    get home_index_url
    must_respond_with :success
  end

end
