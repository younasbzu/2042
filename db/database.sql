CREATE TABLE students (
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  age SMALLINT NOt NULL,
  city VARCHAR(100) NOT NULL
);

INSERT INTO students (name,age,city) VALUES
("Abdul Rahman",18,"Multan"),
("Muzammil Rafiq",19,"Chock Munda"),
("Yousaf",19,"Muzaffargarh"),
("Ali Shair",18,"Kot Addu"),
("Ali Riaz",20,"Multan"),
("Asad Yaqoob",18,"Lahore"),
("Asghar Ali",21,"Jala Pur"),
("Lutf Qaisrani",21,"Tonsa"),
("Adnan",20,"Ali Pur");

-- give all permission to new user
-- GRANT ALL PRIVILEGES ON * . * TO 'user'@'%';
