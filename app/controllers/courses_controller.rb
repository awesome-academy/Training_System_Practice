class CoursesController < ApplicationController
  def index
    @courses = Course.paginate(page: params[:page])
  end

  def show
    return if @course = Course.find_by(id: params[:id])
    flash[:danger] = t "noone"
    redirect_to root_url
  end
end
