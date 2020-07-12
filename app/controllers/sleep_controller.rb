class SleepController < ApplicationController

  def index
    @sleep = []
    if params[:month]
      str_month = params[:month].downcase
      num_month = numeric_month_map[str_month]
      @sleep = Sleep.by_month(num_month)
    end
    render json: @sleep, status: :ok
  end

end
