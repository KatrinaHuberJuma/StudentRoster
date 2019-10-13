package com.kat.lookify.studentroster.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kat.lookify.studentroster.models.Location;
import com.kat.lookify.studentroster.models.Student;
import com.kat.lookify.studentroster.repositories.LocationRepository;
import com.kat.lookify.studentroster.repositories.StudentRepository;

@Service
public class ApiService {
	
	private final StudentRepository studentRepo;
	private final LocationRepository locationRepo;
	
	
	@Autowired
	private ApiService(StudentRepository studentRepo, LocationRepository locationRepo) {
		this.studentRepo = studentRepo;
		this.locationRepo = locationRepo;
	}
	
//	Student Methods
	
	public List<Student> allStudents(){
		return studentRepo.findAll();
	}
	
	public Student createStudent(Student s) {
		
		return studentRepo.save(s);
	}
	
	public Optional<Location> getStudentLocation(Long location_id){
		return locationRepo.findById(location_id);
	}
	
	
//	Location methods
	
	public List<Location> allLocations(){
		return locationRepo.findAll();
	}
	
	public Location createLocation(Location l) {
		
		return locationRepo.save(l);
	}
	
	
}
