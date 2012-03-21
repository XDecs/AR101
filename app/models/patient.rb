class Patient < ActiveRecord::Base
	
	def showAppointments()
		Appointment.where(:patient_id => self.id)
	end
		
end
