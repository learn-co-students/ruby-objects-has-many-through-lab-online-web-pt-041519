# A Doctor has many Patients through its Appointments and a 
# Patient has many Doctors through its Appointments.

class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    # @appointments = []
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(patient, date) 
    appt = Appointment.new(date, patient, self)
  end
  
  def appointments 
    Appointment.all.select do |e|
      e.doctor == self
    end
  end
  
  def patients 
    appointments.collect do |e|
      e.patient
    end
  end

end



