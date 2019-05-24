require 'pry'

class Appointment
  attr_accessor :date, :patient, :doctor
  @@all_appointments = []
  def self.all
    @@all_appointments
  end

  def initialize(date, patient, doctor)
    @date, @patient, @doctor = date, patient, doctor
    self.class.all << self
    doctor.appointments << self
    patient.appointments << self
  end
end
