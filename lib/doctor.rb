class Doctor
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    attr_accessor :name
    def self.all
        @@all
    end
    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
    end
    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end
    def patients
        appointments.map do |appointment|
            appointment.patient
        end
    end
end