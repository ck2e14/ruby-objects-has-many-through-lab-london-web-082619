class Doctor 

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all 
        @@all
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def new_appointment(patient, date) #WTF 
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map {|appt| appt.patient}
    end

    
end