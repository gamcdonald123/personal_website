class StaticPagesController < ApplicationController
  def home
    @currentTime = Time.now
    @formatted_currentTime = @currentTime.strftime("%H:%M %d/%m/%Y")
  end

  def about
  end

  def projects
  end

  def contact
  end

  def resume
  end
end
