package com.example.portfolio.services;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@Service
public class CloudinaryService {

    @Autowired
    private Cloudinary cloudinary;

    public Map uploadImage(MultipartFile file, String folder) throws IOException {

        return cloudinary.uploader().upload(
                file.getBytes(),
                ObjectUtils.asMap(
                        "folder", folder,
                        "resource_type", "auto"
                )
        );
    }

    public void deleteFile(String publicId) throws IOException {

        cloudinary.uploader().destroy(
                publicId,
                ObjectUtils.emptyMap()
        );
    }
    public String uploadResume(MultipartFile file) throws IOException {

    Map<?, ?> result = cloudinary.uploader().upload(
            file.getBytes(),
            ObjectUtils.asMap(
                    "resource_type", "raw",
                    "folder", "portfolio/resume",
                    "public_id", "MyResume",
                    "overwrite", true));

    return result.get("secure_url").toString();
}
}