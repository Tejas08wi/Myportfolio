package com.example.portfolio.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.portfolio.dto.SignupDto;
import com.example.portfolio.entities.AppUser;
import com.example.portfolio.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void register(SignupDto signupDto) {

        AppUser user = new AppUser();

        user.setUsername(signupDto.getUsername());

        user.setPassword(
                passwordEncoder.encode(signupDto.getPassword()));

        user.setRole("ROLE_MEMBER");

        userRepository.save(user);

    }

}