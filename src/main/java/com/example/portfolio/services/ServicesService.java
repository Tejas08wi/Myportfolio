package com.example.portfolio.services;

import java.util.List;
import java.util.Optional;

import org.springframework.web.multipart.MultipartFile;

import com.example.portfolio.dto.ServiceDto;
import com.example.portfolio.entities.ServiceEntity;

public interface ServicesService {
	ServiceEntity saveService(String realPath,MultipartFile multipartfile, ServiceDto serviceDto)throws Exception;
	List<ServiceEntity> readService();
	void deleteService(String realpath,int id,String filename);
	Optional<ServiceEntity> readService(int id);
	ServiceEntity updateService(String realPath,MultipartFile multipartfile, ServiceDto serviceDto,
			int id,String oldfilename)throws Exception;
}
