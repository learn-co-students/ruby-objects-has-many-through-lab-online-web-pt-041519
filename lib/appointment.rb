require_relative "../lib/doctor.rb"
require_relative "../lib/patient.rb"

class Appointment
  attr_accessor :date, :doctor, :patient
  @@appts = []
  def initialize(date, patient, doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    @@appts << self
  end
  
  def self.all 
    @@appts
  end
end