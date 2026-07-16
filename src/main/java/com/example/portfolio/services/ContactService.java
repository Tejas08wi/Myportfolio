package com.example.portfolio.services;

import java.util.List;

import com.example.portfolio.dto.ContactDto;
import com.example.portfolio.entities.ContactEntity;

public interface ContactService {
	ContactEntity saveContact(ContactDto contactDto);
	boolean isContactEmailExist(String email);
	List<ContactEntity> readAllContacts();
	void deleteContactById(int id);
}
