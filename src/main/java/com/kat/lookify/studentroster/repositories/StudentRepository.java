package com.kat.lookify.studentroster.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.kat.lookify.studentroster.models.Location;
import com.kat.lookify.studentroster.models.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Long> {
	
	public List<Student> findAll();
	
	public Student findByLocation(Location location);
	
	
}
