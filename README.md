**Amazon E-commerce Portal with User Authentication**

An Amazon-inspired e-commerce portal developed using Java Servlets and SQL, featuring a robust user authentication system. This project covers essential web development concepts, such as user authentication, error handling, and session management.

**Features**

User Registration: Allows new users to register and create an account.
User Authentication: Verifies login credentials to ensure secure access.
Error Handling: Displays clear error messages (e.g., "email and password do not match") when login credentials are incorrect.
Session Management: Manages user sessions to maintain authentication across pages.
Welcome Page: Redirects users to a personalized welcome page after successful login.
Concepts Used
Java Servlets: Core backend development using Servlets to handle HTTP requests and responses.
SQL Database Management: Stores and manages user data securely.
Session Management: Tracks user sessions to keep users logged in across pages.
RequestDispatcher Interface: Utilizes the include and forward methods to handle navigation and error messaging.
MVC Architecture: Follows Model-View-Controller principles for clear separation of logic, presentation, and data.
Technologies Used
Frontend: HTML, CSS
Backend: Java Servlets, Java
Database: SQL (for user data storage and retrieval)

**Screenshots**

Illustrative screenshots of the project.

Home Page
![image](https://github.com/user-attachments/assets/215e928d-c349-45b8-9a8d-9991bbe804c7)

![image](https://github.com/user-attachments/assets/b21fb542-a2a7-49d5-bcfa-9a997a090e11)



Footer
![image](https://github.com/user-attachments/assets/2534ecb5-c2bb-4aed-8bea-288895930373)



User Login Page
![image](https://github.com/user-attachments/assets/afd77c42-5c51-43ed-ab48-2a03667fdf8c)


New user Login Page

![image](https://github.com/user-attachments/assets/fa892e01-5652-43b9-a92e-bf68f81b8e6a)


If Invalid user 

![image](https://github.com/user-attachments/assets/b118de3a-ff62-4d98-be04-ae885bb94b35)




**Setup and Installation**

Clone the repository:
bash
Copy code

Set up the SQL database with tables for user data.
Configure database credentials in the application to connect to your SQL database.
Deploy the project on a servlet-compatible server (e.g., Apache Tomcat).
How to Use
Register a new account or use existing credentials to log in.
On successful login, you'll be redirected to the welcome page.
Logout to return to the home page.
Future Enhancements
Adding product pages and categories
Implementing password encryption for enhanced security
Building a shopping cart functionality
