CREATE TABLE transactions (
  transaction_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
  transaction_value DECIMAL(12,4) NOT NULL,
  transaction_title VARCHAR(50) NOT NULL,
  transaction_date DATE NOT NULL
);

CREATE TABLE tags (
  tag_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
  tag_name VARCHAR(30) UNIQUE
);

CREATE TABLE transactions_tags (
  tag_id INT UNSIGNED NOT NULL,
  transaction_id INT UNSIGNED NOT NULL
);
