class Appointment < ActiveRecord::Base

	def Appointment.makeAppointment(_medic_id, _patient_id, _begin_time, _end_time)
		appointments = Appointment.where(:medic_id => _medic_id)
		status = false
		appointments.each do |app|
			status = if (_begin_time == app['begin_time'] and _end_time == app['end_time']) then true else false end
		end
		if status == false then 
			Appointment.create(:medic_id => _medic_id,:patient_id => _patient_id,:begin_time => _begin_time,:end_time => _end_time)
		end
	end
			
	def Appointment.eliminateAppointment(_appointment_id)
		Appointment.delete(_appointment_id)
	end
	
	def Appointment.updateAppointment(_appointment_id, _medic_id, _begin_time, _end_time)
		appointments = Appointment.where(:medic_id => _medic_id)
		status = false
		appointments.each do |app|
			status = if (_begin_time == app['begin_time'] and _end_time == app['end_time']) then true end
			p status
		end
		if status == nil then 
			Appointment.update(_appointment_id ,{:medic_id => _medic_id,:begin_time => _begin_time,:end_time => _end_time})
		end		
	end
	

end
