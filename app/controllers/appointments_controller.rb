class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
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
    @appointment = Appointment.find(params[:id])
  end

  def update
    
  end

  private

    def appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :reason)
    end
end
