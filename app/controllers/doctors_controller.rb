class DoctorsController < ApplicationController
  # before_action :set_appts
  before_action :set_doctor, only: [:show, :destroy]

  def index
    @doctors = Doctor.all
    # @generals = @doctor.appointments.where(type: 'general')
    # @specialists = @doctor.appointments.where(type: 'specialist')
    # @allergens = @doctor.appointments.where(type: 'allergen')
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)

    if @doctor.save
      redirect_to doctors_path
    else
      render :new
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private
    # def set_appts
    #   @appointment = Appointment.find(params[:id])
    # end
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:first_name, :last_name, :specialty)
    end
end