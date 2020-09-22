class ApplicationController < ActionController::Base
  def foo(msg)
    flash.now[:notice] = msg
  end
end
