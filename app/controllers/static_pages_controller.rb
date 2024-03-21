class StaticPagesController < ApplicationController
  def home
    render html: "Fuck you"
  end

  def about
    render html: "About page"
  end

  def projects
    render html: "Projects page"
  end

  def contact
    render html: "Contact page"
  end
end
