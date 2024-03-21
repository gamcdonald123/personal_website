class StaticPagesController < ApplicationController

  def home
    render html: "Hello World, I'm Guy!"
  end

  def contact
    render html: "Contact page"
  end

  def projects
    render html: "Projects page"
  end
end
