package com.example.portfolio.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.portfolio.entities.AppUser;

@Repository
public interface UserRepository extends JpaRepository<AppUser, Long> {
	Optional<AppUser> findByUsername(String username);
}
