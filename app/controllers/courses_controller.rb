class CoursesController < ApplicationController
  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_back(fallback_location: '/courses')
    else
      redirect_to courses_path
    end
  end

  def index
    @course = Course.new
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @course_user = CourseUser.new
    @course_users = CourseUser.where(course_id: params[:id])
    @user = User.new
    @users = User.all
  end

  private

  def course_params
    @course_params ||= params
      .require(:course)
      .permit(
        :name,
        :start_date,
        :end_date,
        :timezone,
        :description
    )
  end
end
