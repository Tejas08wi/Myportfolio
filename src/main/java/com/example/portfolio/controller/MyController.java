package com.example.portfolio.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.portfolio.dto.ContactDto;
import com.example.portfolio.dto.SignupDto;
import com.example.portfolio.entities.AppUser;
import com.example.portfolio.repositories.PortfolioFileRepository;
import com.example.portfolio.repositories.UserRepository;
import com.example.portfolio.services.ContactService;
import com.example.portfolio.services.ServicesService;
import com.example.portfolio.services.UserService;

import com.example.portfolio.entities.PortfolioFile;
import com.example.portfolio.repositories.PortfolioFileRepository;

@Controller
@RequestMapping("/client")
public class MyController {

	@Autowired
	private ContactService contactService;

	@Autowired
	private ServicesService servicesService;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	private UserService userService;

	@Autowired
	private PortfolioFileRepository portfolioFileRepository;

	@GetMapping("/home")
	public String home(Model model) {

		portfolioFileRepository.findByType("banner")
				.ifPresent(file -> model.addAttribute("bannerImage", file.getUrl()));

		portfolioFileRepository.findByType("resume")
				.ifPresent(file -> model.addAttribute("resumeUrl", file.getUrl()));

		return "index";
	}

	@GetMapping("/about")
	public String about() {
		return "about";
	}

	@GetMapping("/services")
	public String services(Model model) {
		model.addAttribute("listOfServices", servicesService.readService());
		return "services";
	}

	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}

	@PostMapping("/saveContact")
	public String saveContact(@Valid @ModelAttribute ContactDto contactDto, BindingResult bindingResult, Model model,
			RedirectAttributes redirectAttributes) {

		// if(bindingResult.hasErrors()) {
		// List<FieldError> fieldErrors = bindingResult.getFieldErrors();
		// for(FieldError error:fieldErrors) {
		// String defaultMessage = error.getDefaultMessage();
		// }
		// }
		if (bindingResult.hasErrors()) {
			model.addAttribute("result", "Invalid input");
			model.addAttribute("errors", bindingResult.getFieldErrors());
			return "contact";
		}

		if (contactService.isContactEmailExist(contactDto.getEmail())) {
			redirectAttributes.addFlashAttribute("result", "You have already registered");
			return "redirect:/client/contact";
		}

		contactService.saveContact(contactDto);
		redirectAttributes.addFlashAttribute("result", "Contact Saved Successfully");
		return "redirect:/client/contact";
	}

	@GetMapping("/downloadResume")
	public void downloadResume(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String realpath = request.getServletContext().getRealPath("/resume/");
		Path path = Paths.get(realpath, "MyResume.pdf");

		response.setContentType("application/pdf");
		response.setHeader("Content-Disposition", "attachment;filename=MyResume.pdf");

		ServletOutputStream outputStream = response.getOutputStream();
		Files.copy(path, outputStream);
		outputStream.flush();
	}

	@GetMapping("/mylogin")
	public String login() {
		return "login";
	}

	@GetMapping("/unauthorized")
	public String unauthorized() {
		return "unauthorized";
	}

	@GetMapping("/signup")
	public String signupPage() {
		return "signup";
	}

	@PostMapping("/signup")
	public String signup(SignupDto signupDto) {
		userService.register(signupDto);

		return "redirect:/client/mylogin?success";
	}
}
