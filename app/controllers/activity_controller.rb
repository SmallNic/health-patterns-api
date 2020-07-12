class ActivityController < ApplicationController

  def index
    @activities = []
    if params[:month]
      str_month = params[:month].downcase
      num_month = numeric_month_map[str_month]
      @activities = Activity.by_month(num_month)
    end
    render json: @activities, status: :ok
  end

end
