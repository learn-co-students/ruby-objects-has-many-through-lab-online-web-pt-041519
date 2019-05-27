class Appointment

  attr_accessor :date, :doctor, :patient

  attr_reader

  @@all = []


  def initialize(patient, doctor, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  # def initialize(date, patient, doctor)
  #   @date = date
  #   @doctor = doctor
  #   @patient = patient
  #   @@all << self
  # end

  def self.all
    @@all
  end

end
