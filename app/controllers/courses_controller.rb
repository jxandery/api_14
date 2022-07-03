class CoursesController < ApplicationController
  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to courses_path
    else
      redirect_to courses_path
    end
  end

  def index
    @course = Course.new
    @courses = Course.all
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
