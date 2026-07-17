package com.example.portfolio.entities;

import javax.persistence.*;

@Entity
@Table(name = "portfolio_files")
public class PortfolioFile {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true)
    private String type;       // banner or resume

    private String url;

    private String publicId;

    public PortfolioFile() {
    }

    public PortfolioFile(String type, String url, String publicId) {
        this.type = type;
        this.url = url;
        this.publicId = publicId;
    }

    public Long getId() {
        return id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getPublicId() {
        return publicId;
    }

    public void setPublicId(String publicId) {
        this.publicId = publicId;
    }
}