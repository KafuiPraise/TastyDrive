# TastyDrive - Food Ordering App

TastyDrive is a web-based food ordering application developed by Matilda Dogbatsey, Freda Tsorme-Dzebu, and Rosina Antwi as their final portfolio project in ALX. This project showcases collaborative efforts across UI/UX design, frontend and backend development, database integration, and overall application architecture.

## Contributors

- **Matilda Dogbatsey**
  - UI/UX Design
  - Logo Design for the food app
  - Design of various view pages
  - Image assets for menu population

- **Freda Tsorme-Dzebu**
  - Database Management
  - Integration of frontend and backend
  - Implementation of application features
  - General project finishes

- **Rosina Antwi**
  - Model design
  - Controller and route implementation
  - Backend functionality development
  - Collaborative project management

## Features

- **User Authentication**:
  - Secure user registration and login functionality.
  - Password reset via email.

- **Menu Management**:
  - Admin dashboard to manage food items (add, edit, delete).
  - Categorization of food items for easy navigation.

- **Order Placement**:
  - Browse menu, add items to cart, and checkout.
  - View order history and details.

- **Admin Dashboard**:
  - Add, edit, or delete food items on the menu.

## Technologies Used

- **Laravel Framework**: Powerful PHP framework for backend development.
- **MySQL Database**: Backend data storage.
- **HTML/CSS/JavaScript**: Frontend development technologies.
- **Bootstrap**: Frontend UI components and layout.
- **Git**: Version control and collaboration.
- **Composer**: Dependency management for PHP.

## Installation and Setup

Follow these steps to set up and run the TastyDrive application locally:

### Prerequisites

- PHP (7.x or higher)
- Composer
- MySQL database

### Installation Steps

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
   - Duplicate the `.env.example` file and rename it to `.env`.
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

## Usage

- **User Registration**:
  - Navigate to `/register` to create a new account.
  
- **Admin Access**:
  - Update the `is_admin` field in the `users` table to grant admin privileges.

- **Admin Dashboard**:
  - Access `/admin` to manage menu items and orders.

- **Placing Orders**:
  - Browse the menu, add items to cart, and proceed to checkout.

## Contributing

Contributions to TastyDrive are welcome! Here's how you can contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/my-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/my-feature`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License.

## Acknowledgments

- ALX Final Project
- Laravel Documentation: https://laravel.com/docs
- Bootstrap Documentation: https://getbootstrap.com/docs
