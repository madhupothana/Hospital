package com.dao;

import java.util.ArrayList;

import com.models.BookingSlot;
import com.models.DoctorDetails;
import com.models.DoctorSlots;
import com.models.Patient;

public interface DoctorDAO {
	ArrayList<DoctorDetails> getAllDoctors();

	ArrayList<DoctorSlots> getAllSlotsById(int doc_id);
	
	boolean addPatient(Patient p);
	
	boolean updateSlots(BookingSlot bs);
	
	boolean bookAppointment(Patient p,BookingSlot bs);
}