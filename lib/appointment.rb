class Appointment
  attr_reader :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  # Read @@all
  def self.all
    @@all
  end

end