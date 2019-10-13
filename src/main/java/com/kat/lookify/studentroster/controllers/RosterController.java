package com.kat.lookify.studentroster.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kat.lookify.studentroster.models.Location;
import com.kat.lookify.studentroster.models.Student;
import com.kat.lookify.studentroster.services.ApiService;

@Controller
public class RosterController {
	@Autowired
	public ApiService rosterService;
	
	@RequestMapping("/students")
	public String students(Model model) {
		
		List<Student> students = rosterService.allStudents();
		model.addAttribute("students", students);
		return "/students/index.jsp";
	}
	
	@GetMapping("/students/new")
	public String newStudent(Model model) {
		Student student = new Student();
		
		model.addAttribute("studentObj", student);
		return "/students/newStudent.jsp";
	}
	
	@PostMapping("/students/new")
	public String createStudent(@Valid @ModelAttribute("studentObj") Student student, BindingResult result) {
		if (result.hasErrors()) {
			return "/students/newStudent.jsp";
		} else {
			rosterService.createStudent(student);
			return "redirect:/students";
			
		}
	}
	
	@GetMapping("/locations/new")
	public String newLocation(Model model) {
		Location location = new Location();
		
		model.addAttribute("locationObj", location);
		List<Student> students = rosterService.allStudents();
		model.addAttribute("students", students);
		return "/locations/newLocation.jsp";
	}
	
	@PostMapping("/locations/new")
	public String createLocations(@Valid @ModelAttribute("locationObj") Location location, BindingResult result) {
		System.out.println(result);
		if (result.hasErrors()) {
			return "/locations/newLocation.jsp";
		} else {
			rosterService.createLocation(location);
			return "redirect:/students";
			
		}
	}
}
