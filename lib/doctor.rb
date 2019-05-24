require 'pry'

class Doctor
  attr_reader :name

  @@all = []

  # Read @@all
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  # Create new appointment from patient object and date.
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  # Return array of all appointments that belong to this doctor
  def appointments
    Appointment.all.select { |appt| appt.doctor.name == @name }
  end

  # Return array of all this doctor's appointment patients
  def patients
    appointments.collect { |appt| appt.patient }
  end

end
