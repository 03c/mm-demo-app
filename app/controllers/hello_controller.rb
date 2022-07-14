class HelloController < ApplicationController
  def index
  end

  def slow
    sleep params[:seconds].to_i

    @message = "Waited for #{params[:seconds]} seconds"
  end
end
