class PageController < ApplicationController
  def contact
  end

  def about
    @title = 'My Hot Page'
  end

  def home
    @projects = Project.all
  end

  def error
  end
end
