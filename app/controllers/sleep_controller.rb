class SleepController < ApplicationController

  def index
    @sleep = Sleep.all
    render json: @sleep, status: :ok
  end

end
