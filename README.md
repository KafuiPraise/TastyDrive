## Table of Contents

1. [Introduction](#introduction)
2. [Contributors](#contributors)
3. [Features](#features)
4. [Technologies Used](#technologies-used)
5. [Installation and Setup](#installation-and-setup)
   - [Prerequisites](#prerequisites)
   - [Installation Steps](#installation-steps)
6. [Usage](#usage)
7. [Contributing](#contributing)
8. [License](#license)
9. [Acknowledgments](#acknowledgments)
10. [Application Screenshots](#screenshots)

---

## Introduction <a name="introduction"></a>

TastyDrive is a collaborative web-based food ordering application developed as a final portfolio project by Matilda Dogbatsey, Freda Tsorme-Dzebu, and Rosina Antwi during their ALX program. The application showcases efforts in UI/UX design, frontend and backend development, database integration, and project management.

## Contributors <a name="contributors"></a>

- **Matilda Dogbatsey**
  - UI/UX Design
  - Logo Design
  - Page Design
  - Image Assets

- **Freda Tsorme-Dzebu**
  - Database Management
  - Frontend-Backend Integration
  - Feature Implementation

- **Rosina Antwi**
  - Model Design
  - Backend Development
  - Project Management

## Features <a name="features"></a>

- **User Authentication**:
  - Secure registration and login.
  - Password reset via email.

- **Menu Management**:
  - Admin dashboard for CRUD operations on food items.
  - Categorization of food items.

- **Order Placement**:
  - Browse menu, add items to cart, and checkout.
  - View order history.

- **Admin Dashboard**:
  - Manage food items.

## Technologies Used <a name="technologies-used"></a>

- **Laravel Framework**
  ![Laravel Logo](https://laravel.com/img/logomark.min.svg)

- **MySQL Database**
  ![MySQL Logo](https://www.mysql.com/common/logos/logo-mysql-170x115.png)

- **HTML/CSS/JavaScript**
  ![HTML/CSS/JavaScript](https://www.w3.org/html/logo/downloads/HTML5_Logo_256.png)

- **Bootstrap**
  ![Bootstrap Logo](https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-social-logo.png)

- **Git**
  ![Git Logo](https://git-scm.com/images/logos/downloads/Git-Icon-1788C.png)

- **Composer**
  ![Composer Logo](https://getcomposer.org/img/logo-composer-transparent.png)

## Installation and Setup <a name="installation-and-setup"></a>

### Prerequisites <a name="prerequisites"></a>

- PHP (7.x or higher)
- Composer
- MySQL database

### Installation Steps <a name="installation-steps"></a>

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/TastyDrive.git
   cd TastyDrive
   ```

2. **Install Dependencies**:
   ```bash
   composer install
   ```

3. **Set Environment Variables**:
   - Duplicate `.env.example` to `.env`.
   - Update `.env` with your database configuration.

4. **Generate Application Key**:
   ```bash
   php artisan key:generate
   ```

5. **Run Migrations**:
   ```bash
   php artisan migrate
   ```

6. **Start Development Server**:
   ```bash
   php artisan serve
   ```

   Access the application at `http://localhost:8000` in your web browser.

## Usage <a name="usage"></a>

- **User Registration**:
  - Navigate to `/register` to create an account.

- **Admin Access**:
  - Update `is_admin` in `users` table to grant admin privileges.

- **Admin Dashboard**:
  - Access `/admin` to manage menu items and orders.

- **Placing Orders**:
  - Browse menu, add items to cart, and checkout.

## Contributing <a name="contributing"></a>

Contributions to TastyDrive are welcome! Follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/my-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/my-feature`).
5. Create a new Pull Request.

## License <a name="license"></a>

This project is licensed under the MIT License.

## Acknowledgments <a name="acknowledgments"></a>

- ALX Final Project
- Laravel Documentation: [https://laravel.com/docs](https://laravel.com/docs)
- Bootstrap Documentation: [https://getbootstrap.com/docs](https://getbootstrap.com/docs)

It looks like you want to incorporate images into your project documentation to enhance its presentation. Including images can make your documentation more engaging and visually appealing. Here's how you can incorporate images into different sections of your documentation:


 ## Application Screenshots <a name="screenshots"></a>

- **User Registration Page**
  ![Registration Page](path/to/registration-screenshot.png)

- **Admin Dashboard**
  ![Admin Dashboard](path/to/admin-dashboard-screenshot.png)

- **Menu Management**
  ![Menu Management](path/to/menu-management-screenshot.png)
