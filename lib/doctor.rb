class Doctor

  attr_accessor :name, :appointment, :patient

  @@all_doctors = []

  def initialize(name)
    @name = name
    @@all_doctors << self
  end

  def self.all
    @@all_doctors
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patients
    end
  end

end