class Medic < ActiveRecord::Base
		
	def showAppointments()
		Appointment.where(:medic_id => self.id)
	end
	
end
