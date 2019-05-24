class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Read @@all
  def self.all
    @@all
  end
  
  # Create new appointment from doctor object and date.
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  # Return array of all appointments that belong to patient
  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  # Return array of all this patient's appointment doctors
  def doctors
    appointments.collect { |appt| appt.doctor }
  end

end