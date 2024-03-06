package com.example.test.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.test.Entity.User;
import com.example.test.Repository.EmployeeRepository;

@Controller
public class EmployeeController {
	
	//@Autowired;
	private EmployeeRepository employeeRepositiry;
	@GetMapping("/employee")
	public String listEmployee(Model model) {
		List<User>employee=EmployeeRepository.findAll();
		model.addAttribute("emplyee", employee);
		return"employee";
	}
	@GetMapping("employees/add")
	public String showaddEmployeeForm(Model model) {
		model.addAttribute("employee",new User());
	}
	
	@PostMapping("employees/add")
	public String addEmployee@Valid @ModelAttribute("user")User employee, BindingResult bindingResult ){
		if(bindingResult.hasErrors()) {
			return "register";
		}
		employeeRepositiry.save(user);
		return "redirect:/login";
	
	}
}
