class CourseUsersController < ApplicationController
  def create
    @course_user = CourseUser.new(course_user_params)

    if @course_user.save
      redirect_back(fallback_location: "/courses/#{course_user_params[:course_id]}")
    else
      redirect_to courses_path
    end
  end

  private

  def course_user_params
    @course_user_params ||= params
      .require(:course_user)
      .permit(:course_id, :user_id)
  end
end
