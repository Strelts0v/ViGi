USE vg;

CREATE TABLE IF NOT EXISTS users(
  id_user INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL,
  role_mask INT NOT NULL,
  PRIMARY KEY (id_user)
);

CREATE TABLE IF NOT EXISTS profiles (
  id_user INT NOT NULL,
  first_name VARCHAR(30)NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  position VARCHAR(30) NOT NULL,
  city VARCHAR(30) NOT NULL,
  status VARCHAR(100) NOT NULL,
  FOREIGN KEY (id_user) REFERENCES users(id_user)
);