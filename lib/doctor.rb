require 'pry'

class Doctor

  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date,patient,self)
  end

  #helper
  def appointments
    Appointment.all.select do |appointment_instance|
      appointment_instance.doctor == self
    end
  end

  def patients
    appointments.map do |appointment_instance|
      appointment_instance.patient
    end
  end

end # end of class
