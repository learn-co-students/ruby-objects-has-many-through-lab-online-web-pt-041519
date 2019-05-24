require 'pry'

class Patient
  attr_accessor :name, :appointments
  @@all_patients = []
  def self.all
    @@all_patients
  end

  def initialize(name)
    @name, @appointments = name, []
    self.class.all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def doctors
    self.appointments.map { |appt| appt.doctor }.uniq
  end
end
