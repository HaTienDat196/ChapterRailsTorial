class ApplicationController < ActionController::Base
  def hello
    render html: "Hello every people"
  end
end
