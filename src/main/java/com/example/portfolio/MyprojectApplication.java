package com.example.portfolio;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.example.portfolio.entities.AppUser;
import com.example.portfolio.repositories.UserRepository;

@SpringBootApplication
public class MyprojectApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx =
		        SpringApplication.run(MyprojectApplication.class, args);

		UserRepository userRepo = ctx.getBean(UserRepository.class);
		PasswordEncoder encoder = ctx.getBean(PasswordEncoder.class);

		// admin member
		if (!userRepo.findByUsername("admin").isPresent()) {

		    AppUser appUser = new AppUser();
		    appUser.setUsername("admin");
		    appUser.setPassword(encoder.encode("admin123"));
		    appUser.setRole("ROLE_ADMIN");
		    userRepo.save(appUser);
		    System.out.println("ADMIN INSERTED");

		} else {
		    System.out.println("ADMIN ALREADY EXIST");
		}

		if (!userRepo.findByUsername("member").isPresent()) {

		    AppUser appUser = new AppUser();
		    appUser.setUsername("member");
		    appUser.setPassword(encoder.encode("member123"));
		    appUser.setRole("ROLE_MEMBER");
		    userRepo.save(appUser);
		    System.out.println("MEMBER INSERTED");

		} else {
		    System.out.println("MEMBER ALREADY EXIST");
		}
	}

}
