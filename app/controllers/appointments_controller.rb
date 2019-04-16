class AppointmentsController < ApplicationController
  before_action :get_appointment, only: [:show, :edit, :destroy, :update]

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def show
    @name = "Marc"
  end

  def new
    @appointment = Appointment.new    
  end

  def create
    puts params
    @appointment = Appointment.create(appointment_params)
    redirect_to appointments_path
  end

  def edit
  end

  def update
    @appointment.update(appointment_params)

    redirect_to @appointment
  end

  def destroy
    @appointment.destroy

    redirect_to appointments_path
  end

  private

    def appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :reason)
    end

    def get_appointment
      @appointment = Appointment.find(params[:id])
    end
end
