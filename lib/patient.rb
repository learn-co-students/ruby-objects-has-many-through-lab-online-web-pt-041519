class Patient
  
  attr_accessor :name, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(doctor, date) 
    appt = Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.select do |e|
      e.patient == self
    end
  end
  
  def doctors
    appointments.collect do |e|
      e.doctor
    end
  end

  
end