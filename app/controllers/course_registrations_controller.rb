class CourseRegistrationsController < ApplicationController
  before_action :set_course_registration, only: [:show, :update, :destroy]

  # GET /course_registrations
  def index
    @course_registrations = CourseRegistration.all

    render json: @course_registrations
  end

  # GET /course_registrations/1
  def show
    render json: @course_registration
  end

  # POST /course_registrations
  def create
    @course_registration = CourseRegistration.new(course_registration_params)

    if @course_registration.save
      render json: @course_registration, status: :created, location: @course_registration
    else
      render json: @course_registration.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /course_registrations/1
  def update
    if @course_registration.update(course_registration_params)
      render json: @course_registration
    else
      render json: @course_registration.errors, status: :unprocessable_entity
    end
  end

  # DELETE /course_registrations/1
  def destroy
    @course_registration.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_registration
      @course_registration = CourseRegistration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_registration_params
      params.fetch(:course_registration, {})
    end
end
