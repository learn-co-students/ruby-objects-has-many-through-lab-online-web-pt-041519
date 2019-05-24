require 'pry'

class Doctor
  attr_accessor :name, :appointments
  @@all_doctors = []
  def self.all
    @@all_doctors
  end

  def initialize(name)
    @name, @appointments = name, []
    self.class.all << self
  end

  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end

  def patients
    self.appointments.map { |appt| appt.patient }.uniq
  end
end
