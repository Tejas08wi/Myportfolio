package com.example.portfolio.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ServiceDto {
	@Size(min=2,max=30,message = "Invalid Title length")
	@NotBlank(message = "Title cannot be empty")
	private String title;
	
	
	@Size(min=4,max=80,message = "Invalid description length")
	@NotBlank(message = "Description cannot be empty")
	private String description;
	
	
	private MultipartFile serviceFile;
}
