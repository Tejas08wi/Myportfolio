package com.example.portfolio.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.time.LocalDateTime;
import java.util.Optional;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.portfolio.dto.ServiceDto;
import com.example.portfolio.entities.AppUser;
import com.example.portfolio.entities.ServiceEntity;
import com.example.portfolio.repositories.ContactRepository;
import com.example.portfolio.repositories.UserRepository;
import com.example.portfolio.services.ContactService;
import com.example.portfolio.services.ServicesService;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private ServicesService servicesService;
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@GetMapping("/home")
	public String home(Model model, Principal principal) {
		model.addAttribute("username", principal.getName());
		return "admin/adminHome";

	}
	@GetMapping("/readAllContacts")
	public String readAllContacts(Model model) {
		model.addAttribute("contactData",contactService.readAllContacts());
		
		return "admin/readAllContacts";

	}
	@GetMapping("/deleteContactById")
	public String deleteContactById(@RequestParam int id) {
		contactService.deleteContactById(id);
		return "redirect:/admin/readAllContacts";

	}
	@GetMapping("/addService")
	public String addServiceView() {
		return "admin/addService";

	}
	@PostMapping("/addService")
	public String addService(@Valid @ModelAttribute ServiceDto serviceDto,BindingResult result,
			Model model,RedirectAttributes redirectAttributes, HttpServletRequest request) throws Exception {
		if(result.hasErrors()) {
			model.addAttribute("result","Invalid input");
			model.addAttribute("errors",result.getFieldErrors());
			return "admin/addService";
		}
		
		if(serviceDto.getServiceFile()==null || serviceDto.getServiceFile().isEmpty()) {
			model.addAttribute("result","File must be uploaded");
			return "admin/addService";
		}
		
		MultipartFile multipartfile=serviceDto.getServiceFile();
		long size=multipartfile.getSize();
		if(size>(2*1024*1024)) {
			model.addAttribute("filerror","File size must not exceed 2MB");
			return "admin/addService";
		}
		
		String realpath=request.getServletContext().getRealPath("img/services/");
//		String originalfilename=UUID.randomUUID().toString()+LocalDateTime.now().toString().replace(":", "a")+multipartfile.getOriginalFilename();
//		Path path=Paths.get(realpath,originalfilename);
//		File file2=path.toFile();
//		multipartfile.transferTo(file2);
		
		servicesService.saveService(realpath, multipartfile ,serviceDto);
		redirectAttributes.addAttribute("result","Service Added Successfully");
		
		return "redirect:/admin/addService";

	}
	
	@GetMapping("/readAllServices")
	public String readAllServices(Model model) {
		model.addAttribute("listOfServices", servicesService.readService());
		return "admin/readAllServices";

	}
	@GetMapping("/deleteService")
	public String deleteService(@RequestParam int id,@RequestParam String filename,RedirectAttributes redirectAttributes,
			HttpServletRequest request) {
		String realpath=request.getServletContext().getRealPath("img/services/");
		servicesService.deleteService(realpath, id, filename);
		
		return "redirect:/admin/readAllServices";

	}
	@GetMapping("/updateService")
	public String updateService(@RequestParam int id,Model model) {
		
		Optional<ServiceEntity> service = servicesService.readService(id);
		ServiceEntity serviceEntity = service.get();
		model.addAttribute("serviceData",serviceEntity);
		return "admin/updateService";

	}
	@PostMapping("/updateService")
	public String updateService(@RequestParam int id,@RequestParam String oldfilename,
			@ModelAttribute ServiceDto serviceDto,HttpServletRequest request,RedirectAttributes redirectAttributes) throws Exception {
		
		String realpath=request.getServletContext().getRealPath("img/services/");
		MultipartFile multipartfile=serviceDto.getServiceFile();
		
		servicesService.updateService(realpath, multipartfile, serviceDto, id, oldfilename);
		
		return "redirect:/admin/readAllServices";

	}
	@GetMapping("/uploadResume")
	public String uploadResumeView() {
		return "admin/uploadResume";

	}
	@PostMapping("/uploadResume")
	public String uploadResume(@RequestParam MultipartFile resume,RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws Exception {
		
		if(resume==null || resume.isEmpty()) {
			redirectAttributes.addFlashAttribute("result","Resume must be uploaded");
			return "redirect:/admin/uploadResume";
		}
		
		long size=resume.getSize();
		if(size>(2*1024*1024)) {
			redirectAttributes.addFlashAttribute("result","Resume must be not exceed 3MB");
			return "redirect:/admin/uploadResume";
		}
		
		String contentType=resume.getContentType();
		if(!contentType.contains("pdf")) {
			redirectAttributes.addFlashAttribute("result","Resume must be in PDF format");
			return "redirect:/admin/uploadResume";
		}
		
		String realpath=request.getServletContext().getRealPath("/resume/");
		
		//file upload
		Path path=Paths.get(realpath,"MyResume.pdf");
		File file2=path.toFile();
		
		if(file2.exists()) {
			file2.delete();
		}
		
		resume.transferTo(file2);
		
		redirectAttributes.addFlashAttribute("result","Resume Uploaded Successfully");		
		return "redirect:/admin/uploadResume";

	}
	@GetMapping("/uploadImage")
	public String uploadImageview() {
		return "admin/uploadImage";

	}
	@PostMapping("/uploadImage")
	public String uploadImage(@RequestParam MultipartFile image,RedirectAttributes redirectAttributes,
			HttpServletRequest request) throws Exception {
		
		if(image==null || image.isEmpty()) {
			redirectAttributes.addFlashAttribute("result","Image must be uploaded");
			return "redirect:/admin/uploadImage";
		}
		
		long size=image.getSize();
		if(size>(1*1024*1024)) {
			redirectAttributes.addFlashAttribute("result","Image must be not exceed 1MB");
			return "redirect:/admin/uploadImage";
		}
		
		String contentType=image.getContentType();
		if(!"image/png".equals(contentType) &&
			    !"image/jpeg".equals(contentType)) {
			redirectAttributes.addFlashAttribute("result","Image must be in png/jpg format");
			return "redirect:/admin/uploadImage";
		}
		
		String realpath=request.getServletContext().getRealPath("/img/banner");
		
		//file upload
		Path path=Paths.get(realpath,"MyImage.png");
		File file2=path.toFile();
		
		if(file2.exists()) {
			file2.delete();
		}
		
		image.transferTo(file2);
		
		redirectAttributes.addFlashAttribute("result","Image Uploaded Successfully");		
		return "redirect:/admin/uploadImage";

	}
	@GetMapping("/changePassword")
	public String changePasswordPage() {
	    return "admin/changePassword";
	}
	@PostMapping("/changePassword")
	public String changePassword(
	        @RequestParam String oldPassword,
	        @RequestParam String newPassword,
	        Principal principal) {

	    AppUser appUser =
	            userRepository.findByUsername(principal.getName()).get();

	    if (!passwordEncoder.matches(oldPassword, appUser.getPassword())) {
	        return "redirect:/admin/changePassword?error";
	    }

	    appUser.setPassword(passwordEncoder.encode(newPassword));

	    userRepository.save(appUser);

	    return "redirect:/admin/changePassword?success";
	}
}
