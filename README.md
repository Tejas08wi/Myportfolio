# 🚀 My Portfolio Website

A full-stack **Portfolio Management System** built with **Spring Boot, Spring Security, JSP, MySQL, Cloudinary, and Bootstrap**.

The application provides a public portfolio website for visitors and a secure admin dashboard for managing portfolio content.

---

## 🌐 Live Demo

**Portfolio:** https://your-render-url.onrender.com/client/home

---

## ✨ Features

### 👤 Public Website
- Home Page
- About Page
- Services Page
- Contact Form
- Resume Download
- Responsive Design

### 🔐 Admin Dashboard
- Secure Login
- Change Password
- Upload Banner Image
- Upload Resume
- Add Services
- Update Services
- Delete Services
- View Contact Messages

---

## 🛠 Tech Stack

### Backend
- Java 17
- Spring Boot 2.7
- Spring MVC
- Spring Security
- Spring Data JPA
- Hibernate

### Frontend
- JSP
- HTML5
- CSS3
- Bootstrap
- JavaScript
- JSTL

### Database
- MySQL

### Cloud Services
- Cloudinary (Image & Resume Storage)
- Clever Cloud (MySQL Database)
- Render (Deployment)

### Build Tool
- Maven

---

## 📁 Project Structure

```
src
 ├── controller
 ├── dto
 ├── entities
 ├── repositories
 ├── services
 ├── configuration
 └── resources

webapp
 ├── WEB-INF
 ├── css
 ├── js
 ├── img
 └── views
```

---

## 🔐 Authentication & Authorization

Spring Security is used for authentication.

### Public Routes

```
/client/**
```

Accessible by everyone.

### Protected Routes

```
/admin/**
```

Accessible only after login.

### Roles

- ROLE_ADMIN
- ROLE_MEMBER

---

## 📦 Main Functionalities

### Contact Management

Visitors can submit contact details.

Admin can:
- View Contacts
- Delete Contacts

---

### Service Management

Admin can:

- Add Services
- Edit Services
- Delete Services

Each service supports image upload.

---

### Banner Image

Admin can upload a new homepage banner image.

Images are stored securely in **Cloudinary**.

---

### Resume Upload

Admin can upload a PDF resume.

Resume is stored in **Cloudinary** and can be downloaded by visitors.

---

## 🗄 Database

Tables include:

- users
- contacts
- services
- portfolio_files

---

## ⚙ Environment Variables

```
PORT

DB_URL

DB_USERNAME

DB_PASSWORD

CLOUDINARY_CLOUD_NAME

CLOUDINARY_API_KEY

CLOUDINARY_API_SECRET
```

---

## 🚀 Running Locally

Clone the repository

```bash
git clone https://github.com/Tejas08wi/Myportfolio.git
```

Move into the project

```bash
cd Myportfolio
```

Build

```bash
mvn clean install
```

Run

```bash
mvn spring-boot:run
```

Application

```
http://localhost:8081/client/home
```

---

## 🚀 Deployment

The application is deployed using:

- Render
- Clever Cloud
- Cloudinary

---

## 📸 Screenshots

Screenshots here later.

Example:

```
Home Page

Admin Dashboard

Services

Contact Page
```

---

## 👨‍💻 Author

**Tejaswi Kumar**

B.Tech Computer Science & Engineering

KIIT University

GitHub: https://github.com/Tejas08wi

LinkedIn: https://www.linkedin.com/in/tejaswi-kumar-59a990271/

---

## 📄 License

This project is developed for educational and portfolio purposes.
