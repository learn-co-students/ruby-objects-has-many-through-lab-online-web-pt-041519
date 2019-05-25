class Doctor
  attr_reader :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(pati, date)
      apt = Appointment.new(date, pati, self)
  end

  def self.all
   @@all
  end

  def appointments
    Appointment.all.select do |appointments|
    appointments.doctor == self
    end
  end

  def patients
    #binding.pry
    appointments.collect do|name|
      name.patient
    end
  end


end
