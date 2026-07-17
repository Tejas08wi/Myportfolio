package com.example.portfolio.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.portfolio.entities.PortfolioFile;

public interface PortfolioFileRepository extends JpaRepository<PortfolioFile, Long> {

    Optional<PortfolioFile> findByType(String type);

}