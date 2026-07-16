package com.example.portfolio.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.portfolio.entities.ContactEntity;

@Repository
public interface ContactRepository extends JpaRepository<ContactEntity, Integer> {
	boolean existsByEmail(String email);
}
