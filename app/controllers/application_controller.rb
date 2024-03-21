class ApplicationController < ActionController::Base
  def hello
    render html: "Hello world!"
  end

  def contact
    render html: "Contact page"
  end

  def projects
    render html: "Project"
  end
end
