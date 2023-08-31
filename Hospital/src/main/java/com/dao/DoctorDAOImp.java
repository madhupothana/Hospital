package com.dao;

import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.models.BookingSlot;
import com.models.DoctorDetails;
import com.models.DoctorMapper;
import com.models.DoctorSlots;
import com.models.DoctorSlotsMapper;
import com.models.Patient;

public class DoctorDAOImp implements DoctorDAO {
	JdbcTemplate jdbcTemplate;

	@Autowired
	public DoctorDAOImp(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private final String SQL_GET_DOCTORS = "select * from doctor_details";
	private final String SQL_GET_SLOTS = "select * from slot_details where s_status='Open' and s_docid=? order by s_date";
	private final String SQL_INSERT_PATIENT = "insert into patient_details(p_name,p_age,p_gender,p_mobile,p_village) values (?,?,?,?,?)";
	private final String SQL_UPDATE_SLOT = "update slot_details set s_status='Book' where s_id=?";
	private final String SQL_INSERT_APPOINTMENT = "insert into Appointment_details(a_docid, a_slotid, a_pname, a_pphone, a_date, a_ftime, a_ttime) values (?,?,?,?,?,?,?)";
	
	@Override
	public ArrayList<DoctorDetails> getAllDoctors() {

		return (ArrayList<DoctorDetails>) jdbcTemplate.query(SQL_GET_DOCTORS, new DoctorMapper());
	}

	@Override
	public ArrayList<DoctorSlots> getAllSlotsById(int doc_id) {
		return (ArrayList<DoctorSlots>) jdbcTemplate.query(SQL_GET_SLOTS, new Object[] { doc_id },
				new DoctorSlotsMapper());
	}

	@Override
	public boolean addPatient(Patient p) {
		return jdbcTemplate.update(SQL_INSERT_PATIENT, p.getP_name(), p.getP_age(), p.getP_gen(),
				p.getP_phone(),p.getP_village()) > 0;
	}

	@Override
	public boolean updateSlots(BookingSlot bs) {
		return jdbcTemplate.update(SQL_UPDATE_SLOT,bs.getS_id()) > 0;
	}

	@Override
	public boolean bookAppointment(Patient p, BookingSlot bs) {
		return jdbcTemplate.update(SQL_INSERT_APPOINTMENT, bs.getDoc_id(),bs.getS_id(),p.getP_name(),p.getP_phone(),bs.getDate(),bs.getFtime(),bs.getTtime()) > 0;
	}

}