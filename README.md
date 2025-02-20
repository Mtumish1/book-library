# 📚 Book Library Management System

## 🚀 Overview
The **Book Library Management System** is a web application built using **Ruby on Rails 8** with **Devise authentication**. It allows users to browse available books, borrow and return books, and track their borrowing history.

## ✨ Features
- 📖 **User Authentication** (Sign Up, Login, Logout) with Devise
- 📚 **Book Listing Page** (Shows available and borrowed books)
- 🔍 **Book Details Page** (Displays book info with a borrow button)
- 👤 **User Profile Page** (Lists borrowed books & return option)
- 📆 **Borrowing System** (Users can borrow and return books with due dates)
- ✅ **Validations & Error Handling** (Ensures ISBN uniqueness, prevents borrowing unavailable books)
- 🎨 **Tailwind CSS Integration** (Modern UI Styling)

## 🛠️ Tech Stack
- **Backend**: Ruby on Rails 8
- **Frontend**: ERB + Tailwind CSS
- **Database**: PostgreSQL / SQLite (Development)
- **Authentication**: Devise
- **Deployment**: Heroku / Render (Optional)

## 📂 Project Structure
```
book_library/
├── app/
│   ├── controllers/
│   │   ├── books_controller.rb
│   │   ├── borrowings_controller.rb
│   ├── models/
│   │   ├── book.rb
│   │   ├── borrowing.rb
│   │   ├── user.rb
│   ├── views/
│   │   ├── books/
│   │   │   ├── index.html.erb
│   │   │   ├── show.html.erb
│   │   ├── borrowings/
│   │   │   ├── index.html.erb
│   │   │   ├── create.html.erb
│   │   │   ├── return_book.html.erb
├── config/
│   ├── routes.rb
├── db/
│   ├── migrate/
│   ├── schema.rb
├── Gemfile
└── README.md
```

## 🏗️ Installation & Setup
### 1️⃣ Prerequisites
Make sure you have installed:
- **Ruby** (>= 3.3.0)
- **Rails** (>= 8.0)
- **PostgreSQL** (or SQLite for development)
- **Bundler**

### 2️⃣ Clone the Repository
```sh
git clone https://github.com/yourusername/book_library.git
cd book_library
```

### 3️⃣ Install Dependencies
```sh
bundle install
```

### 4️⃣ Set Up the Database
```sh
rails db:create db:migrate
```

### 5️⃣ Run the Server
```sh
rails s
```
Then, open `http://localhost:3000/` in your browser.

## 📜 Routes
| Method  | Route                      | Description                 |
|---------|---------------------------|-----------------------------|
| GET     | `/books`                   | List all books              |
| GET     | `/books/:id`               | Show book details           |
| POST    | `/books/:id/borrow`        | Borrow a book               |
| PATCH   | `/borrowings/:id/return`   | Return a book               |
| GET     | `/borrowings`              | List borrowed books         |

## ✅ Testing
Run the test suite:
```sh
rails test  # For Minitest
# OR
rspec  # If using RSpec
```

## 🚀 Deployment
To deploy the application, use **Heroku** or **Render**:
```sh
git push heroku main
heroku run rails db:migrate
```

## 🎯 Future Enhancements
- 📊 **Admin Dashboard** to manage books & users
- 🔍 **Search & Filter** for books
- 📅 **Email Reminders** for overdue books

## 📜 License
This project is open-source and available under the **MIT License**.

---

💡 **Happy Coding! 🚀**

