package com.example.portfolio.services;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import javax.transaction.Transactional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.example.portfolio.dto.ServiceDto;
import com.example.portfolio.entities.ServiceEntity;
import com.example.portfolio.repositories.ServiceRepository;
@Service
public class ServicesServiceImpl implements ServicesService{
	
	@Autowired
	private  ServiceRepository serviceRepository;
	
	@Autowired
	private ModelMapper modelMapper;

	@Override
	@Transactional(rollbackOn = Exception.class)
	public ServiceEntity saveService(String realpath,MultipartFile multipartfile, ServiceDto serviceDto) throws Exception {
		String filename=UUID.randomUUID().toString()+LocalDateTime.now().toString().replace(":", "a")+multipartfile.getOriginalFilename();
		ServiceEntity serviceEntity=modelMapper.map(serviceDto, ServiceEntity.class);
		serviceEntity.setFilename(filename );
		serviceEntity.setDatetime(LocalDateTime.now().toString());
		
		ServiceEntity entity = serviceRepository.save(serviceEntity);
		
		Path path=Paths.get(realpath,filename);
		File file2=path.toFile();
		multipartfile.transferTo(file2);
		
		
		return entity;
	}

	@Override
	public List<ServiceEntity> readService() {
		
		return serviceRepository.findAll();
	}

	@Override
	@Transactional(rollbackOn = Exception.class)
	public void deleteService(String realpath, int id, String filename) {
		serviceRepository.deleteById(id);
		File file=new File(realpath+File.separator+filename);
		file.delete();
		
	}

	@Override
	public Optional<ServiceEntity> readService(int id) {
		
		return serviceRepository.findById(id);
	}

	@Override
	@Transactional(rollbackOn = Exception.class)
	public ServiceEntity updateService(String realPath, MultipartFile multipartfile, ServiceDto serviceDto, int id,
			String oldfilename) throws Exception {
		if(multipartfile!=null && !multipartfile.isEmpty()) {
			String filename=UUID.randomUUID().toString()+LocalDateTime.now().toString().replace(":", "a")+multipartfile.getOriginalFilename();
			
			ServiceEntity serviceEntity=modelMapper.map(serviceDto, ServiceEntity.class);
			serviceEntity.setId(id);
			serviceEntity.setFilename(filename );
			serviceEntity.setDatetime(LocalDateTime.now().toString());
			ServiceEntity entity = serviceRepository.save(serviceEntity);
			
			File file=new File(realPath+File.separator+oldfilename);
			file.delete();
			Path path=Paths.get(realPath,filename);
			File file2=path.toFile();
			multipartfile.transferTo(file2);
			
			return entity;
		}
		else {
			ServiceEntity serviceEntity=modelMapper.map(serviceDto, ServiceEntity.class);
			serviceEntity.setId(id);
			serviceEntity.setFilename(oldfilename );
			serviceEntity.setDatetime(LocalDateTime.now().toString());
			
			ServiceEntity entity = serviceRepository.save(serviceEntity);
			return entity;
		}
		
		
	}

}
