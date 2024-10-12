CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR,
  email VARCHAR,
  password VARCHAR,
  first_name VARCHAR,
  date_of_birth DATE,
  phone_number VARCHAR,
  is_active BOOLEAN,
  is_staff BOOLEAN,
  is_owner BOOLEAN, 
  last_login DATE,
  date_joined DATE,
);

CREATE TABLE address(
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
  street VARCHAR,
  city TEXT,
  zip_code TEXT,
  country TEXT,
  additional
);
  
  
  
CREATE TABLE products(
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  product_name VARCHAR,
  product_description TEXT,
  price REAL,
);

CREATE TABLE orders(
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
  product_id INT,
  FOREIGN KEY (product_id) REFERENCES products(product_id)
  purchase_date DATE,
  quantity INT
);
  

CREATE TABLE wish_list(
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
  item_name VARCHAR,
  item_description TEXT,
  item_price REAL
);
  
CREATE TABLE purchase_history(
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
  order_id INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
  purchase_date DATE,
  quantity INT,
);



'''

Basic Information to include:

username: A unique identifier for the user.
email: The user's email address (typically used for login and notifications).
password: A hashed password for authentication (Django handles this for you).
Profile Information (optional but useful):

first_name: The user's first name.
last_name: The user's last name.
date_of_birth: The user's date of birth.
phone_number: A contact number for the user.
address: The user's shipping address (consider creating a separate model for multiple addresses).
city: The user's city.
state: The user's state.
zip_code: The user's postal code.
country: The user's country.
Account Information:

is_active: A boolean field to indicate if the user's account is active.
is_staff: A boolean field to indicate if the user can access the admin panel.
is_superuser: A boolean field to indicate if the user has superuser privileges.
last_login: A timestamp of the user's last login.
Additional Features:

date_joined: A timestamp for when the user created their account.
profile_picture: An optional field for the user's profile picture (can use models.ImageField).
wishlist: A relation to a wishlist model, if you plan to implement that functionality.
purchase_history: A relation to track past purchases, typically linked to an order model.

'''
