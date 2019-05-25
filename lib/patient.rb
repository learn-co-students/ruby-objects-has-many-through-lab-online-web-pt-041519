class Patient
  
  @@all = []
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    Doctor.all.select {|doctor| doctor.patients.include?(self)}
  end
  
end