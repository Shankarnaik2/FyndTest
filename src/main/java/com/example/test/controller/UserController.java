package com.example.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.test.Entity.User;

import jakarta.validation.Valid;

@Controller
public class UserController {
	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/register")
	public String showRegistration(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}
	@PostMapping("/register")
	public String registerUser(@Valid @ModelAttribute("user")User user, BindingResult bindingResult ) {
		if(bindingResult.hasErrors()) {
			return "register";
		}
		userRepository.save(user);
		return "redirect:/login";
	}

}
