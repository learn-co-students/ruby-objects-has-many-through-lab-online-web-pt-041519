class Patient
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

  # Create new appointment from doctor object and date.
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  # Return array of all appointments that belong to patient
  def appointments
    Appointment.all.select { |appt| appt.patient.name == @name }
  end

  # Return array of all this patient's appointment doctors
  def doctors
    appointments.collect { |appt| appt.doctor }
  end

end